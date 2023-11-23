--  user 생성
create user 'testuser'@'localhost' identified by '1234';

-- show grant
show grants for 'testuser'@'localhost';

--  grant insert 권한 부여
grant INSERT on board.author to 'testuser'@'localhost';

-- flush privileges;
FLUSH PRIVILEGES;

-- 특정 사용자 권한 재조회 show grant
SHOW GRANTS FOR 'testuser'@'localhost';

-- revoke insert 권한 제거
revoke SELECT ON board.author FROM 'testuser'@'localhost';