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