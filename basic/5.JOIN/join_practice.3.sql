-- author 테이블에서 name, email
-- post 테이블 title, contents 정보를 UNION 하여 조회

SELECT 컬럼1, 컬럼2 FROM TABLE1 UNION SELECT 컬럼1, 컬럼2 FROM TABLE2;

SELECT name, email FROM author UNION SELECT title, contents FROM post;


-- group by author_id
-- author_id 별 count 값
-- author_id 별 price sum, avg
SELECT author_id, count(*) FROM post GROUP BY author_id;
SELECT author_id, sum(price) AS sum, round(avg(price)) AS avg FROM post GROUP BY author_id;


-- author_id 별로 price 평균값을 구하시오.
-- 단, 건별로 2000이상인 데이터만 평균을 내서 출력하시오
select author_id, avg(price) as avg
from post
where price >= 2000
group by author_id;

-- author_id 별로 price 평균값을 구하되 평균값이 2000원 이상건만 출력하시오.
select author_id, avg(price) as avg 
from post 
group by author_id having avg >= 2000;



-- 1번, 2번 조건을 합친 값을 출력하시오.
select authot_id, avg(price) as avg
from post
where price >= 2000
group by author_id
having avg >= 2000;