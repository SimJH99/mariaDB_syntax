-- post 테이블에 DATETIME으로 createdTime 컬럼 추가 및 default로 현재 시간 들어가도록 설정
-- datetime(6) default current_timestamp(6)
-- 컬럼 추가 후 insert 테스트

SELECT * FROM post;

ALTER TABLE post ADD COLUMN created_time DATETIME DEFAULT current_timestamp(6);

INSERT INTO post (id, title, author_id) VALUES (6, 'porsche', 2);