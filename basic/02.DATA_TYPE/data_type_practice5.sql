-- 실습1: date_format, like, between, 비교연산자를 각각 사용하여 2023년에 생성된 데이터 출력

SELECT DATE_FROMAT(created_time, '%Y-%m-%d') AS created_time FROM post;
SELECT * FROM post WHERE created_time LIKE '2023%';
SELECT * FROM post WHERE created_time BETWEEN '2023-01-01' AND '2023-12-31';
SELECT * FROM post WHERE created-time >= '2023-01-01' AND created_time <= '2023-12-31';

-- - 실습2: now()를 활용해서 오늘날짜에 생성된 데이터 출력하기
SELECT * FROM post WHERE created_time = NOW();
SELECT * FROM post WHERE DATE_FORMAT(created_time, '%Y-%m-%d'); = DATE_FORMAT(NOW(), '%Y-%m-%d');

-- 실습3: ALTER문을 써서 post의 title을 not null조건으로 바꿔보자
ALTER TABLE post MODIFY COLUMN title VARCHAR(255) NOT NULL;

--실습4 : author, post테이블의 is에 auto_increment로 바꿔보자
ALTER TABLE post MODIFY COLUMN id INT auto_increment;
