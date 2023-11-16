-- 데이터베이스 생성
CREATE DATABASE board;

-- 데이터베이스 선택
USE board;

-- author 테이블 신규생성
CREATE TABLE author(id INT, name VARCHAR(255), email VARCHAR(255), 
password VARCHAR(255), test1 VARCHAR(255), PRIMARY KEY (id));

-- 테이블 목록 조회
SHOW TABLE;

-- 테이블 컬럼조회
DESCRIBE author;

-- post 테이블 신규생성
CREATE TABLE posts(id INT PRIMARY KEY, title VARCHAR(255), content VARCHAR(255), author_id INT, FOREIGN KEY(author_id) REFERENCES author(id));

-- 테이블 컴럼 상세 조회
SHOW FULL columns from author;

-- 테이블 생성문 조회
SHOW CREATE TABLE posts;
-- 	Table	Create Table
-- 	posts	CREATE TABLE `posts` (
--    `id` int(11) NOT NULL,
--    `title` varchar(255) DEFAULT NULL,
--    `content` varchar(255) DEFAULT NULL,
--    `author_id` int(11) DEFAULT NULL,
--    PRIMARY KEY (`id`),
--    KEY `author_id` (`author_id`),
--    CONSTRAINT `posts_ibfk_1` FOREIGN KEY (`author_id`) REFERENCES `author` (`id`)
--  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci

