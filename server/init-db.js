import mysql from 'mysql2/promise';
import fs from 'fs/promises';
import path from 'path';
import { fileURLToPath } from 'url';
import dotenv from 'dotenv';

dotenv.config();

const __filename = fileURLToPath(import.meta.url);
const __dirname = path.dirname(__filename);

const DB_HOST = process.env.DB_HOST || '127.0.0.1';
const DB_PORT = Number(process.env.DB_PORT || 3306);
const DB_USER = process.env.DB_USER || 'root';
const DB_PASSWORD = process.env.DB_PASSWORD || '';
const DB_NAME = process.env.DB_NAME || 'codesmic';
const SQL_FILE = path.join(__dirname, 'question.sql');

async function initDatabase() {
  let connection;

  try {
    connection = await mysql.createConnection({
      host: DB_HOST,
      port: DB_PORT,
      user: DB_USER,
      password: DB_PASSWORD,
      multipleStatements: true,
    });

    await connection.query(
      `CREATE DATABASE IF NOT EXISTS \`${DB_NAME}\` CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci`
    );
    await connection.query(`USE \`${DB_NAME}\``);

    let sql = await fs.readFile(SQL_FILE, 'utf8');

    sql = sql
      .replace(/^\uFEFF/, '')
      .replace(/^\s*--.*$/gm, '')
      .trim();

    await connection.query('SET FOREIGN_KEY_CHECKS = 0;');
    await connection.query('DROP TABLE IF EXISTS `questions`;');
    await connection.query(sql);
    await connection.query('SET FOREIGN_KEY_CHECKS = 1;');

    console.log(`✅ Database "${DB_NAME}" berhasil diinisialisasi dari question.sql`);
  } catch (error) {
    console.error('❌ Gagal menginisialisasi database:', error);
    process.exit(1);
  } finally {
    if (connection) {
      await connection.end();
    }
  }
}

initDatabase();