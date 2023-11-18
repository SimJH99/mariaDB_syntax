-- 게시판 회원은 총 5명이 되도록 만들고,
-- 게시판에 실명으로 글이 쓰여진 게시글은 총 3건,
-- 익명으로 글이 쓰여진 글은 총 2건이 있도록 데이터 INSERT
-- 게시판의 회원을 모두 delete하되, 기존에 posting된 글을 삭제되지 않고 남아있도록 한다.
-- HINT: where author_id != null
-- post의 글을 3개만 조회하되, title을 기준으로 오름차순하고 만약 제목이 같은 경우 contents로 내림차순이 되도록 조회.

-- author 회원 5명 추가
INSERT INTO author(id, name, email) VALUES(1, 'kim', 'abc@naver.com');
INSERT INTO author(id, name, email, password) VALUES(2, 'sim', '123@naver.com', 1234);
INSERT INTO author(id, name, email, role) VALUES(3, 'hong', '765@naver.com', 'user');
INSERT INTO author(id, name, email) VALUES(4, 'shin', 'test@naver.com');
INSERT INTO author(id, name, email) VALUES(5, 'lee', 'siu@naver.com');

SELECT * FROM author;

-- post 데이터 5개 추가
INSERT INTO post(id, title, contents, author_id) VALUES(1, 'title1', 'hello world1', 1);
INSERT INTO post(id, title, contents, author_id) VALUES(2, 'title2', 'hello world2', 1);
INSERT INTO post(id, title, contents, author_id) VALUES(3, 'title3', 'hello world3', 3);
INSERT INTO post(id, title, contents) VALUES(4, 'title4', 'hello world4');
INSERT INTO post(id, title, contents) VALUES(5, 'title5', 'hello world5');

SELECT * FROM post;

-- 게시판의 회원을 모두 delete하되, 기존에 posting된 글을 삭제되지 않고 남아있도록 한다.
-- author테이블과 연관관계가 맺어져 있기 때문에 null로 바꾸어 연관관계를 끊어주어야 삭제가 가능하다.
UPDATE post SET author_id= NULL WHERE author_id IS NOT NULL;
DELETE FROM author;

-- post의 글을 3개만 조회하되, title을 기준으로 오름차순하고
-- 만약 제목이 같은 경우 contents로 내림차순이 되도록 조회.
SELECT * FROM post ORDER BY title, contents DESC LIMIT 3;