-- UNIQUE ALTER문
-- author 테이블 email에 unique 제약 조건 추가
-- 컬럼 제약조건(방법1)으로 추가
-- 제약조건 제거 및 index제거
-- 테이블 제약조건(방법2) 추가형식으로 추가

--방법1
--ALTER TABLE 테이블이름 MODIFY COLUMN 필드이름 필드타입 UNIQUE
--방법2
--ALTER TABLE 테이블이름 ADD CONSTRAINT 제약조건이름 UNIQUE(필드이름)

-- 제약조건 제거
--ALTER TABLE 테이블명 DROP CONSTRAINT 제약조건이름; --UNIQUE 드롭


정답
ALTER TABLE author MODIFY COLUMN email VARCHAR(255) UNIQUE;

ALTER TABLE author DROP CONSTRAINT email;

ALTER TABLE author ADD CONSTRAINT author_unique UNIQUE(email);




