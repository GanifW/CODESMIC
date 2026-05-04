import express from 'express';
import db from '../db.js';
import { getUserIdFromToken } from './auth.js';

const router = express.Router();

router.get('/', async (req, res) => {
  try {
    const authHeader = req.headers.authorization || '';
    const token = authHeader.replace('Bearer ', '');
    const userId = getUserIdFromToken(token);

    if (!userId) {
      return res.status(401).json({ message: 'Unauthorized' });
    }

    const [users] = await db.query(
      'SELECT xp, level, challenges_completed, projects_completed FROM users WHERE id = ?',
      [userId]
    );

    if (users.length === 0) {
      return res.status(404).json({ message: 'Pengguna tidak ditemukan.' });
    }

    const [activities] = await db.query(
      'SELECT title, xp, type, created_at FROM activities WHERE user_id = ? ORDER BY created_at DESC LIMIT 8',
      [userId]
    );

    res.json({
      progress: {
        level: users[0].level,
        xp: users[0].xp,
        maxXp: 100,
        challengesCompleted: users[0].challenges_completed,
        projectsCompleted: users[0].projects_completed,
      },
      recentActivity: activities.map((activity) => ({
        title: activity.title,
        xp: activity.xp,
        type: activity.type,
        time: activity.created_at,
      })),
    });
  } catch (error) {
    console.error(error);
    res.status(500).json({ message: 'Gagal mengambil data progress.' });
  }
});

export default router;

// Endpoint untuk submit jawaban challenge dan update XP user
router.post('/submit', async (req, res) => {
  try {
    const authHeader = req.headers.authorization || '';
    const token = authHeader.replace('Bearer ', '');
    const userId = getUserIdFromToken(token);

    if (!userId) {
      return res.status(401).json({ message: 'Unauthorized' });
    }

    const { questionId, htmlCode, cssCode, jsCode } = req.body;
    if (!questionId) {
      return res.status(400).json({ message: 'ID soal wajib diisi.' });
    }

    // Ambil data soal
    const [questions] = await db.query('SELECT * FROM questions WHERE id = ?', [questionId]);
    if (questions.length === 0) {
      return res.status(404).json({ message: 'Soal tidak ditemukan.' });
    }
    const question = questions[0];

    // Validasi jawaban: bandingkan user input dengan answer berdasarkan answer_type
    let isCorrect = false;
    const expectedAnswer = question.answer?.trim() ?? '';
    const answerType = question.answer_type || 'html';

    if (!expectedAnswer) {
      return res.status(200).json({ success: false, message: 'Soal belum memiliki jawaban yang ditetapkan.' });
    }

    const userAnswer = 
      answerType === 'html' ? htmlCode?.trim() ?? '' :
      answerType === 'css' ? cssCode?.trim() ?? '' :
      jsCode?.trim() ?? '';

    // Exact string comparison (whitespace normalized)
    const normalizedExpected = expectedAnswer.replace(/\s+/g, ' ').trim();
    const normalizedUserAnswer = userAnswer.replace(/\s+/g, ' ').trim();

    isCorrect = normalizedUserAnswer === normalizedExpected;

    if (!isCorrect) {
      return res.status(200).json({ success: false, message: 'Jawaban belum benar.' });
    }

    // Cek apakah user sudah pernah menyelesaikan challenge ini
    const [existing] = await db.query(
      'SELECT * FROM activities WHERE user_id = ? AND type = ? AND title = ?',
      [userId, 'challenge', question.title]
    );
    if (existing.length > 0) {
      return res.status(200).json({ success: true, message: 'Sudah pernah submit.', xp: 0 });
    }

    // Update XP user
    await db.query('UPDATE users SET xp = xp + ? WHERE id = ?', [question.xp, userId]);

    // Catat aktivitas
    await db.query(
      'INSERT INTO activities (user_id, title, xp, type, created_at) VALUES (?, ?, ?, ?, NOW())',
      [userId, question.title, question.xp, 'challenge']
    );

    // Ambil XP terbaru
    const [users] = await db.query('SELECT xp FROM users WHERE id = ?', [userId]);
    const newXp = users[0]?.xp ?? 0;

    res.json({ success: true, message: 'Jawaban benar! XP bertambah.', xp: question.xp, totalXp: newXp });
  } catch (error) {
    console.error(error);
    res.status(500).json({ message: 'Gagal memproses submit.' });
  }
});
