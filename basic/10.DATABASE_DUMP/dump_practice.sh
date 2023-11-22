# 리눅스에 데이터베이스 덤프하기

#  리눅스 업데이트
sudo apt update

# mariadb 설치하기
sudo apt-get install mariadb-server

#  mairadb 설치 확인하기
mariadb --version

#  mariadb 접속하기
sudo mariadb -u root -p

#  mariadb에 새로운 데이터베이스 생성
create database board;

#  다시 나와서 덤프파일이 있는 경로로 이동
cd mariaDB_syntax/project/

#  새로 생성한 데이터베이스에 덤프파일로 데이터베이스 복원
mysql -u root -p board < dumpfile.sql