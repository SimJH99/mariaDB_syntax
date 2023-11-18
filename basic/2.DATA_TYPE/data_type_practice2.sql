-- role 컬럼을 enum 타입으로 변경하고, 'user', 'admin'으로 enum타입 지정.
-- not null로 설정하되, 입력이 없을 시에는 'user'로 세팅되도록 default 설정
UPDATE author SET role='user';  --기존의 있던 데이터들로 인해 형 변환전을 할 때 오류가 나서 미리 정리를 해준다.

ALTER TABLE author MODIFY COLUMN role enum ('user', 'admin') NOT NULL DEFAULT 'user';

DESCRIBE author;

INSERT INTO author (id, name) VALUES (3, 'jenny');


-- admin으로 데이터 세팅 후 insert
INSERT INTO author(id, name, role) VALUES (4, 'hong', 'admin');

-- super-user 데이터로 insert
INSERT INTO author(id, name, role) VALUES (5, 'hong', 'super-user');

-- role 데이터 없이 insert
INSERT INTO author(id, name) VALUES (5, 'hong');