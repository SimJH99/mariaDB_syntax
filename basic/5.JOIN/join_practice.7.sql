-- author_id 별로 price 평균값을 구하되 평균값이 2000원 이상건만 출력하시오.
select author_id, avg(price) as avg 
from post 
group by author_id having avg >= 2000;