--  estore DB (스키마)를 만들어라
CREATE DATABASE estore;   

-- UTF-8mb4 문자 세트와 utf8mb4_unicode_ci 콜레이션을 사용하는 것이 일반적으로 가장 권장되는 방법  (다양한 언어와 이모티콘 등의 문자를 지원)
CREATE DATABASE estore CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- 확인
show databases;


-- estore DB를 사용하겠다.
USE estore;

-- member table이 있다면 삭제해라 
DROP TABLE IF EXISTS board;

-- board 테이블을 ~~이런이런 조건(데이터 타입)으로 만들어라
CREATE TABLE board (
  num INT AUTO_INCREMENT PRIMARY KEY,
  pass VARCHAR(30),
  username VARCHAR(30),
  email VARCHAR(30),
  title VARCHAR(50),
  content VARCHAR(1000),
  readcount INT DEFAULT 0,
  writedate TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- 테이블의 구조를 확인 
SHOW COLUMNS FROM board;

-- 테이블의 구조를 확인 
DESC board;

-- 테이블 확인
show tables;

-- insert문    
INSERT INTO board(username, email, pass, title, content)
VALUES('성윤정', 'pinksung@nate.com', '1234', '첫방문', '반갑습니다.');

INSERT INTO board(username, email, pass, title, content)
VALUES('홍길동', 'city@nate.com', '1234', '강원도', '눈이 많이 와요.');

INSERT INTO board(username, email, pass, title, content)
VALUES('임꺽정', 'forest@nate.com', '1234', '경기도', '숲속공원이요');

INSERT INTO board(username, email, pass, title, content)
VALUES('장보고', 'sea@nate.com', '1234', '제주도', '바다가 보여요.');


commit; -- 영구 저장

select *from board;  

-- 검색
SELECT * FROM board WHERE num = 1;


-- update
UPDATE board SET email = 'dino@naver.com'  WHERE num = 2;


-- 정렬
SELECT * FROM board ORDER BY username;
SELECT * FROM board ORDER BY email;

-- 이름역순 정렬
SELECT * FROM board ORDER BY title DESC;

-- 삭제
DELETE FROM board WHERE num = 5 ;

--  테이블 삭제 
drop table board;

show tables;


-- estore DB 삭제해라 
DROP DATABASE IF EXISTS estore;


