-- author의 name, email정도만 알 수 있는 view 생성
CREATE VIEW author_for_view AS SELECT name, eamil FROM author;

-- author 관련 view 테이블에 조회권한있는 testuser 계정 생성
CREATE USER 'testuser'@'localhost' IDENTIFIED BY 'testpw';
GRANT SELECT ON board.author_for_view TO 'testuser'@'localhost';
FLUSH PRIVILEGES;



-- 프로시저 실습
-- 프로시저 네임: getUser(IN userId INT)
-- where id = userId

DELIMITER //
CREATE PROCEDURE getUser (IN userId INT)
BEGIN
  SELECT * from author where id = userId;
END //
DELIMITER ;


--프로시저 호출
call getUser(5);