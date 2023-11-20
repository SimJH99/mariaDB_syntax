-- ON DELETE CASCADE 실습
-- -외래키 제약 조건에서 ON DELETE CASCADE등의 옵션
-- - ON DELETE CASCADE 테스트
--   - 삭제 시
--     - author 삭제시 post 같이 삭제
--   - 수정 시
--     - author id 수정 불가
--     - restrict와 동일
    
-- - ON DELETE SET NULL, ON UPDATE SET NULL 또한 동일한 방법으로 테스트


-- 기존 fk, 인덱스 삭제
alter table post drop index post_author_fk;
alter table post drop index author_id;

-- 
ALTER TABLE POST ADD CONSTRAINT post_author_fk FOREIGN KEY(author_id) REFERENCES author(id) ON DELETE SET NULL ON UPDATE SET NULL;
