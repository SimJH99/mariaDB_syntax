-- 제약조건 - ON UPDATE CASCADE
-- 외래 키 제약조건에서 ON UPDATE CASCADE등의 옵션

-- POST 테이블에 ON UPDATE CASCADE 설정
-- 먼저, 기존의 foreign key제약조건을 조회 후 삭제
     SELECT * FROM INFORMATION_SCHEMA.KEY_COLUMN_USAGE WHERE TABLE_NAME = 'post'
     ALTER TABLE post DROP FOREIGNKEY post_ibfk_1;
     ALTER TABLE post DROP INDEX author_id;
    
--  - 새롭게 제약조건 추가
    ALTER TABLE POST ADD CONSTRAINT post_author_fk FOREIGN KEY(author_id) REFERENCES author(id) ON UPDATE CASCADE;
   
-- - 테스트
--   - 삭제
DELETE FROM `board`.`author` WHERE (`id` = '30');     - 삭제불가
--     - restrict와 동일
--   - 수정
--     -author 테이블의 id 수정시 post테이블의 id도 같이 수정
update author set id = 30 where id = 10; --id 수정
select * from author; --author테이블에서 id 수정 확인
select * from post; -- post테이블에서 변경된 id가 동일하게 변경되었는지 확인