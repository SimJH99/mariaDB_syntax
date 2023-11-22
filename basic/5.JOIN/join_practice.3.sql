-- 위 1번, 2번 예제와 동일하게 모든 저자의 이름과 해당 저자가 작성한 글의 제목을 조회. 단 저자의 나이가 25세 이상인 저자만 조회.
SELECT a.name AS name, p.title AS title 
from author a LEFT JOIN post p 
ON a.id = p.author_id 
WHERE a.age >= 25;