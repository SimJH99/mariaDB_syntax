-- author_id 별로 price 평균값을 구하시오.
-- 단, 건별로 2000이상인 데이터만 평균을 내서 출력하시오
select author_id, avg(price) as avg
from post
where price >= 2000
group by author_id;
