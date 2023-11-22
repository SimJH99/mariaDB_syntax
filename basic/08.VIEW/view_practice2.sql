-- author 관련 view 테이블에 조회권한있는 testuser 계정 생성
CREATE USER 'testuser'@'localhost' IDENTIFIED BY 'testpw';
GRANT SELECT ON board.author_for_view TO 'testuser'@'localhost';
FLUSH PRIVILEGES;