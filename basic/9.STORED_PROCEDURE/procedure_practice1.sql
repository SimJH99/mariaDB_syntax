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

--프로시저 내용 조회
SHOW CREATE PROCEDURE 프로시저명;



--post 테이블에 쉽게 insert 할 수 있는 post관련 프로시저 생성
-- 사용자에게 title, contesnts, author_id 만 입력받아 insert 하는 insert문 생성
DELIMITER //
CREATE PROCEDURE insertPost (IN p_title varchar(255), p_contents varchar(3000), p_author_id INT)
BEGIN
  insert into post(title, contents, author_id) values (p_title, p_contents, p_author_id);
END //
DELIMITER ;

call insertPost('procedure_test', 'hello guys~', 5);