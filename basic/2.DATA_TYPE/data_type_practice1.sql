-- author 테이블에 age 데이터 TINYINT unsigned로 추가
-- 225이하로 insert, 255초과로 insert 테스트
ALTER TABLE author ADD column age TINYINT unsigned;

INSERT INTO author (id, name, age) VALUES (1, 'james', 255);
INSERT INTO author (id, name, age) VALUES (2, 'jhon', 258);     --error

-- post에 price라는 원고료 컬럼을 추가. 원고료 컬럼은 총자릿수 10자리 및 소수점 단위는 3자리까지 가능
-- 컬럼 추가 후 비어있는 컬럼에 숫자 UPDATE test.(소수점 3이하 test, 소수점 3초과 테스트)

ALTER TABLE post ADD column price TINYINT unsigned;
ALTER TABLE post ADD column price decimel(10,3) unsigned;

UPDATE post SET price=1000.5 WHERE id=1;
UPDATE post SET price=1000.555 WHERE id=2;
UPDATE post SET price=1000.5555 WHERE id=3;     --error