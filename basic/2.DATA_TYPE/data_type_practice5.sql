-- 실습1: date_format, like, between, 비교연산자를 각각 사용하여 2023년에 생성된 데이터 출력

SELECT DATE_FROMAT(created_time, '%Y-%m-%d') AS created_time FROM post;
SELECT * FROM post WHERE created_time LIKE '2023%';
SELECT * FROM post WHERE created_time BETWEEN '2023-01-01' AND '2023-12-31';
SELECT * FROM post WHERE created-time >= '2023-01-01' AND created_time <= '2023-12-31';

-- - 실습2: now()를 활용해서 오늘날짜에 생성된 데이터 출력하기
SELECT * from post WHERE created_time = now();
