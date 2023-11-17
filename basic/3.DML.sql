--  insert, select, update, delete

-- insert
INSERT INTO author(id, name, email) VALUES(1, 'kim', 'abc@naver.com');

-- update
UPDATE author SET email='hello@naver.com' WHERE id =2;

-- delete
DELETE FROM author WHERE id=2;

-- select
SELECT * FROM author;
SELECT name FROM author;
SELECT * FROM author WHERE id = 1;
SELECT * FROM author WHERE id > 10;
SELECT * FROM author WHERE id > 10 AND name = 'abc';

-- 이름 중복 제거하고 조회
SELECT DISTINCT name FROM author;

-- ORDER BY (정렬)
SELECT * FROM author ORDER BY name desc;

-- ORDER BY 멀티 : 먼저쓴 컬럼 우선정렬. asc/desc 생략 시  asc적용
SELECT * FROM author ORDER BY name, email desc;

-- LIMIT NUMBER : 특정숫자로 결과값 개수 제한
SELECT * FROM author ORDER BY id DESC LIMIT 2;