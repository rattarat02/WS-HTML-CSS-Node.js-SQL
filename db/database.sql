-- สร้างฐานข้อมูลใหม่ชื่อ my_database
CREATE DATABASE IF NOT EXISTS my_database;

-- ใช้ฐานข้อมูล my_database
USE my_database;

-- สร้างตาราง users ถ้ายังไม่มีอยู่ในฐานข้อมูล
CREATE TABLE IF NOT EXISTS users (
    id INT AUTO_INCREMENT PRIMARY KEY, -- กำหนด id เป็นคีย์หลักและให้เพิ่มค่าอัตโนมัติ
    name VARCHAR(255),                 -- กำหนดคอลัมน์ name เป็นประเภทข้อความ
    email VARCHAR(255),                -- กำหนดคอลัมน์ email เป็นประเภทข้อความ
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP -- กำหนดคอลัมน์ created_at โดยมีค่าเริ่มต้นเป็นเวลาปัจจุบัน
);

-- เพิ่มข้อมูลลงในตาราง users
INSERT INTO users (name, email) VALUES ('John Doe', 'john@example.com');
INSERT INTO users (name, email) VALUES ('Jane Smith', 'jane@example.com');
INSERT INTO users (name, email) VALUES ('Alice Johnson', 'alice@example.com');
INSERT INTO users (name, email) VALUES ('Bob Brown', 'bob@example.com');
INSERT INTO users (name, email) VALUES ('Charlie White', 'charlie@example.com');

-- ดึงข้อมูลผู้ใช้ทั้งหมดจากตาราง users
SELECT * FROM users;

-- อัปเดตชื่อของผู้ใช้ที่มี id เป็น 1
UPDATE users SET name = 'John Updated' WHERE id = 1;

-- ลบผู้ใช้ที่มี id เป็น 3
DELETE FROM users WHERE id = 3;

-- ค้นหาผู้ใช้ที่มีอีเมลที่ลงท้ายด้วย @example.com
SELECT * FROM users WHERE email LIKE '%@example.com';
