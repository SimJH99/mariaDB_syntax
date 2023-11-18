drop database if exists board;
show databases;

-- author 테이블에 age epdlzj tinyint unsignedfh cnrk
-- 225dlgkfh insert, 255초과로 insert 테스트

-- post에 price라는 원고료 컬럼을 추가. 원고료 컬럼은 총자릿수 10자리 및 소수점 단위는 3자리까지 가능
-- 컬럼 추가 후 비어있는 컬럼에 숫자 update test.(소수점 3이하 test, 소수점 3초과 테스트)

alter table author add column age tinyint unsigned;
describe * author;

alter table post add column price decimel(10,3) unsigned;