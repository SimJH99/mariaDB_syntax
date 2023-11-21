-- author 테이블에서 name, email
-- post 테이블 title, contents 정보를 UNION 하여 조회

SELECT 컬럼1, 컬럼2 FROM TABLE1 UNION SELECT 컬럼1, 컬럼2 FROM TABLE2;

SELECT name, email FROM author UNION SELECT title, contents FROM post;


-- group by author_id
-- author_id 별 count 값
-- author_id 별 price sum, avg

 SELECT author_id, count(*) FROM post GROUP BY author_id;
 SELECT author_id, sum(price) AS sum, round(avg(price)) AS avg FROM post GROUP BY author_id;