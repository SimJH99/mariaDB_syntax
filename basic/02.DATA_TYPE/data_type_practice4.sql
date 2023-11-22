-- author 테이블의 id가 1,2,4는 아닌 데이터 조회(NOT IN 사용)

SELECT * FROM author WHERE id NOT IN (1,2,4);


-- post 테이블의 id가 2~4까지 데이터 조회
-- between 활용
-- and 조건 활용
-- or 조건 활용
SELECT * FROM post WHERE id BETWEEN 2 AND 4;

SELECT * FROM post WHERE id >=2 AND id <= 4;

SELECT * FROM post WHERE NOT id = 2 OR id = 3 OR id = 4;
