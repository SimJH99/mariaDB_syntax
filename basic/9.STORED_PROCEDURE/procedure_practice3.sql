-- author테이블에 while문을 활용하여 데이터 대량 insert
-- 100건
DELIMITER //
CREATE PROCEDURE insert_text (IN p_title VARCHAR(255))
BEGIN
	DECLARE a INT default 0;
	while a < 100 DO
		insert into post(title) values (concat(p_title, a)) ;
		set a = a + 1;
	end while;
end //
DELIMITER ;


call insert_text('sim');