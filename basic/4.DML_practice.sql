-- 1번) author 데이터 5개 추가하기
-- address는 데이터 넣지 말것
insert into author(id, name) values(2, 'sim');
insert into author(id, name) values(3, 'lee');
insert into author(id, name) values(4, 'kang');
insert into author(id, name) values(5, 'sim');

-- 2번) post 데이터 5개 추가
-- 2개는 저자가 있는 데이터
-- 2개는 저자가 비어있는 데이터 -> author_id에 NOT NULL 조건없다는 사실 확인
--  1개는 저자가 author 테이블에 없는 데이터 추가 -> 에러발생 확인
insert into post(id, author_id) values(1,1);
insert into post(id, author_id) values(2,2);
insert into post(id) values(3);
insert into post(id) values(4);
insert into post(id, author_id) values(5,10); --에러

-- 3번) author 데이터 중 id가 4인 데이터를 email을 abc@naver.com, name을 abc로 변경
update author set email='abc@naver.com', name='abc' where id=1;


-- post에 글쓴적 없는 author 데이터를 1개 삭제
DELETE FROM author WHERE id=2;


-- post에 글쓴적 있는 author 데이터 1개 삭제 -> 에러 -> 삭제조치
-- 방법 1
DELETE FROM  post WHERE author_id=4; 
delete from author where id =2;
-- 방법 2
update post set author_id = nill where author_id = 2;
delete from author where id = 2;
