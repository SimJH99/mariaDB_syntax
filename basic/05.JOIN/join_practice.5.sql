-- group by author_id
-- author_id 별 count 값
-- author_id 별 price sum, avg
SELECT author_id, count(*) FROM post GROUP BY author_id;
SELECT author_id, sum(price) AS sum, round(avg(price)) AS avg FROM post GROUP BY author_id;
