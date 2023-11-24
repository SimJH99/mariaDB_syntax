-- 스키마 설계
-- 주문관리 서비스 설계
-- 요구사항
    -- 모든테이블 컬럼 자유 설계
    -- 해당 서비스에서는 회원가입이 가능
        -- MEMBERS
        -- 회원의 종류가 user, admin, seller로 구성
    -- 판매자(회원)는 상품과 재고 수량을 등록
        -- 상품명, 상품가격, 재고
        -- 누가 등록했는지에 대한 정보가 남아야 함에 유의
    -- 회원이 여러 상품을 한꺼번에 주문가능
        -- ORDER, ORDER_DETAILS

--필요 산출물
    --ER다이어그램을 통해 추상화
    -- 릴레이셔널 스키마를 통해 구체화
    -- 테이블 생성문(DDL)


-- 회원 정보 테이블 컬럼 create member_info
--컬럼: id(auto_increment, PRIMARY key), name(not null), email(not null), password(not null), role(not null)
create table member_info
(id bigint not null auto_increment primary key, 
 name varchar(255) not null,
 email varchar(255) unique,
 password varchar(255) not null,
 role enum('user', 'admin', 'sellr')
 );

-- 상품 정보 테이블 컬럼 create item_info
--컬럼: id(auto_increment, PRIMARY key), i_name(not null), price(), amount
create table item_info
 (id bigint not null auto_increment primary key,
  i_name varchar(255) unique not null,
  price int unsigned,
  amount int unsigned
 );

-- 주문 테이블 컬럼 create order_info
--컬럼: id(auto_increment, PRIMARY key), member_id(fk member_info.id not null),
  create table order_info
 (id bigint not null auto_increment primary key,
  member_id bigint not null,
  FOREIGN KEY (member_id) REFERENCES member_info(id));


-- 회원이 여러 상품을 한꺼번에 주문 가능하게 order_detail 테이블 생성
--컬럼: id(auto_increment, PRIMARY key), order_id(order_info.id), item_id(item_info.id), oreder_amount, order_date
create table order_detail
  (id bigint not null auto_increment primary key,
   order_id bigint not null,
   item_id bigint not null,
   order_amount int unsigned,
   order_date DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
   FOREIGN KEY (order_id) REFERENCES order_info(id),
   FOREIGN KEY (item_id) REFERENCES item_info(id)
   );


--트랜잭션 짜기
--seller 회원가입
--seller가 상품등록(사과, 바나나)
--customer가 회원가입
--order 테이블 insert, order_details insert, 재고update