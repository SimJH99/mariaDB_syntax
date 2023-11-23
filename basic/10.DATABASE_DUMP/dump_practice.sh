# 리눅스에 데이터베이스 덤프하기

#  리눅스 업데이트
sudo apt-get -y update

# mariadb 설치하기
sudo apt-get install -y mariadb-server

#  mariadb 설치 확인하기
mariadb --version

#  mariadb 접속하기
sudo mariadb -u root -p

#  mariadb에 새로운 데이터베이스 생성
create database board;

#만약 mariadb가 꺼져있다면 실행하기
sudo sytemctl start mariadb
sudo systemctl enable mariadb

# git 설치
sudo apt-get  install git

# git 클론으로 덤프파일 가져오기 
git clone https://github.com/SimJH99/mariaDB_syntax.git

#  다시 나와서 덤프파일이 있는 경로로 이동
cd mariaDB_syntax/project/

#  새로 생성한 데이터베이스에 덤프파일로 데이터베이스 복원
mysql -u root -p board < dumpfile.sql


# 깃클론 말고 다른 덤프 방법: scp를 활용해서 덤프하기