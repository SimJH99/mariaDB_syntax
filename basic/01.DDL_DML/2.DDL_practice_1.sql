-- post 테이블의 contents 컬럼 글자수 3000으로 변경
ALTER TABLE post MODIFY COLUMN contents VARCHAR(3000);

-- author 테이블에 address 컬럼 varchar(255)로 추가
ALTER TABLE author ADD COLUMN address VARCHAR(255);

-- post 테이블 생성문 미리 확인 -> post 테이블 삭제 -> post 테이블 다시 생성
SHOW CREATE TABLE post;
DROP TABLE IF EXISTS post;
CREATE TABLE `post` (
   `id` int(11) NOT NULL,
   `title` varchar(255) DEFAULT NULL,
   `contents` varchar(3000) DEFAULT NULL,
   `author_id` int(11) DEFAULT NULL,
   PRIMARY KEY (`id`),
   KEY `author_id` (`author_id`),
   CONSTRAINT `post_ibfk_1` FOREIGN KEY (`author_id`) REFERENCES `author` (`id`)
 ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;