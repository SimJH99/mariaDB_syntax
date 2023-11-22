-- drop database;
-- database 재생성
-- 아래 스키마를 보고 각각 author, post 테이블을 재생성.
-- FK에는 별도의 참조키 관련 옵션이 없는 default(restrict) 설정.

CREATE TABLE author(id INT, name VARCHAR(100) NOT NULL, email VARCHAR(255),
    password VARCHAR(255), role VARCHAR(50), address  VARCHAR(255), PRIMARY KEY (id));


CREATE TABLE post(id INT(11), title VARCHAR(255), contents VARCHAR(3000), 
author_id INT(11), FOREIGN KEY (author_id) REFERENCES author (id));