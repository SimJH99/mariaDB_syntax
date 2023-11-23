-- 스키마 추가 및 변경
-- author 테이블을 나누어 author_adress 테이블추가
-- contry, state_city, details, zip code, phonenumber
-- on delete cascade옵션
-- 1:1 관계 설정
-- author와 post의 관계가 N:M. 즉 여러명이서 한 post를 수정할 수 있도록 스키마 수정

-- 필요 산출물
-- ER다이어그램을 통해 추상화
-- 릴레이셔널 스키마를 통해 구체화
-- 테이블 생성문(DDL)
-- 테스트 케이스



-- author 테이블을 나누어 author_adress 테이블추가 (정합성을 높이기 위해 author_id에 유니크를 설정)
create table author_address
(id int, country varchar(255), state_city varchar(255), details varchar(255), zip_code int,
 phonenumber int, author_id int, post_id int, PRIMARY KEY (id), FOREIGN KEY (author_id) REFERENCES author(id) on delete cascade, UNIQUE(author_id));



 -- author와 post의 관계가 N:M. 즉 여러명이서 한 post를 수정할 수 있도록 스키마 수정
 -- author_post테이블을 만들어 아이디를 서로 연결해서 조회할 수 있도록 설정
 create table author_post
(id int, 
 author_id int,
 post_id int, 
 PRIMARY KEY (id), 
 FOREIGN KEY (author_id) REFERENCES author(id),
 FOREIGN KEY (post_id) REFERENCES post(id));



select a.name, p.title
 from post p left join author_post ap  
 on p.id = ap.post_id left join author a
 on ap.author_id = a.id;