-- author 테이블과 post테이블은 JOIN하여, 글을 작성한 모든 저자의 이름(name)과 해당 글의 제목(title)을 조회하시오.
-- author는 alias a, post는 alias p를 쓰시오.
SELECT a.name AS name, p.title AS title 
FROM author a INNER JOIN post p 
ON p.author_id = a.id; 