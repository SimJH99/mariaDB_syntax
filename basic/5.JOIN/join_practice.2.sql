-- author 테이블과 post테이블은 JOIN하여, 글을 작성한 모든 저자의 이름(name)과 해당 글의 제목(title)을 조회하시오.
-- author는 alias a, post는 alias p를 쓰시오.
SELECT a.name AS name, p.title AS title 
FROM author a INNER JOIN post p 
ON p.author_id = a.id; 


-- author테이블을 기준으로 post테이블과 JOIN하여, 모든 저자의 이름과 해당 저자가 작성한 글의 제목을 조회하시오.
-- 글을 작성하지 않은 저자의 경우, 글 제목은 NULL로 표시
SELECT a.name AS name, p.title AS title 
from author a LEFT JOIN post p 
ON a.id = p.author_id;


-- 위 예제와 동일하게 모든 저자의 이름과 해당 저자가 작성한 글의 제목을 조회. 단 저자의 나이가 25세 이상인 저자만 조회.
SELECT a.name AS name, p.title AS title 
from author a LEFT JOIN post p 
ON a.id = p.author_id 
WHERE a.age >= 25;