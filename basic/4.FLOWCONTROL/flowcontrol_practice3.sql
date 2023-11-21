-- post 테이블에서 id,title,contents, 그리고 author_id의 경우 author_type이라는 이름으로 조회,
-- author_id가 만약 1이면 first_author, 2이면 second_author로 조회가 되도록 하고 
-- 3이상 그외의 경우 etc_authors로 조회도록 하여라.
-- 1.case when 사용
-- 2.if문 사용하여 동일하게 출력

-- iffull을 사용하여 만약 contesnts가 null로 비어있으면 no contesnts로 출력 되도록 select문 작성

--1. CASE WHEN 문
select id, title, contents, 
case author_id 
	when 1 then 'First_author'
	when 2 then 'Second_author'
    when is null then 'anonymous'
	else 'Etc_author' 
end as author_type
from post;

-- 2. IF문
select id, title, contents,
if(author_id = 1, 'First_author',if(author_id = 2, 'Second_author', if(author_id is null, 'anonymous', 'Etc_author'))) 
as author_type
from post;


-- 3. if 문법 사용해서 만약 author_id가 1이면 first author 그렇지 않은 경우엔 others 출력하시오
-- id, title, contents, author_type 형식으로 출력
select id, title, contents,
if(author_id = 1, 'first author', 'others') 
as author_type
from post;