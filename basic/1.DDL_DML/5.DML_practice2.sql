
타입 실습
role타입 enum 타입으로 추가하고, 'user', 'admin'으로 설정하고

-- post 테이블에 DATETIME으로 created_time 컬럼 추가 및 default로 현재시간 들어가도록 설정
--   >daterime(6) default current_timestamp(6)
--   컬럼 추가 후 insert 테스트
ALTER TABLE author DROP COLUMN created_time;

alter table author modify column role enum('user', 'admin') not null default 'user';

update author set role = 2 where id = 1;  

select * from author where role = 2;

alter table post add column created_time datetime(6) default current_timestamp(6);

insert into post (id, title) values (10, 'hong');

-- 논리연산자 -실습
--  author 테이블의 id가 1,2,4는 아닌 데이터 조회 (NOT IN)사용
select * from post where id between 2 and 4;

--  post 테이블 의 id가 2~4까지 데이터 조회
select * from post where id >=2 and id <= 4;

-- between ghkfdyd / and 조건 활용 / or 조건 활용
select * from post where id = 2 or id = 3 or id =4;
