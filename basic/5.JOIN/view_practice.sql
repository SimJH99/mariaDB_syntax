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



-- post테이블에 if문 활용하여  각 작가의 원고료 평균을 보고 1000원 이상이면 고액원고료 작가인 프로시저 생성
-- call my_procedure(1);
-- "고액 원고료 작가입니다."
-- "고액 원고료 작가가 아닙니다."

DELIMITER //
CREATE PROCEDURE post_price_check (in a_id int)
BEGIN
	DECLARE avg_price int default 0;
    select avg(price) into avg_price from post where author_id = a_id;
    IF avg_price > 1000	THEN
		select '고액 원고료 작가입니다' as message;
    ELSE
		select '고액 원고료 작가가 아닙니다' as message;
    END IF;
END //
DELIMITER ;
