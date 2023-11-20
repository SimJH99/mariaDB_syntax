-- post 테이블에서 id,title,contents, 그리고 author_id의 경우 author_type이라는 이름으로 조회,
-- author_id가 만약 1이면 first_author, 2이면 second_author로 조회가 되도록 하고 
-- 3이상 그외의 경우 etc_authors로 조회도록 하여라.
-- - 1.case when 사용
-- - 2.if문 사용하여 동일하게 출력

-- - 프로그래머스 sql문제 풀이(case when) - 조건에 부합하는 중고거래 상태 조회하기
-- -iffull을 사용하여 만약 contesnts가 null로 비어있으면 no contesnts로 출력 되도록 select문 작성

-- - 프로그래머스 sql 문제풀이 (흐름제어(IF, IFNULL) - 12세 이하인 여자 환자 목록 출력하기)

1.
select id, title, contents, 
case author_id 
	when 1 then 'First_author'
	when 2 then 'Second_author'
    when is null then 'anonymous'
	else 'Etc_author' 
end as author_type
from post;

2.
select id, title, contents,
if(author_id = 1, 'First_author',if(author_id = 2, 'Second_author', if(author_id is null, 'anonymous', 'Etc_author'))) 
as author_type
from post;
