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