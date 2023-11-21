-- author의 테이블을 일단 다 조회하고
-- author가 작성한 글정보를 join하여 추가적으로 조회

SELECT * FROM author a LEFT JOIN post b ON a.id = b.author_id;