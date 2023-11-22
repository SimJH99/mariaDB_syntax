-- 실습 6번, 7번 조건을 합친 값을 출력하시오.
select authot_id, avg(price) as avg
from post
where price >= 2000
group by author_id
having avg >= 2000;