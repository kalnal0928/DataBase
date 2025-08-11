CREATE TABLE 학생(학번 int(3),
                성명 char(10),
                주소 char(100),
                PRIMARY KEY (학번));


CREATE TABLE 성적(학번 int(3),
국어 int(3),
영어 int(3),
수학 int(3),
평가 varchar(1000),
PRIMARY KEY (학번)
);

INSERT into 학생 values (111, '이재민', '대구');
INSERT into 학생 values (112, '이진호', '부산시');
INSERT into 학생 values (113, '박동욱', '영덕');



INSERT into 성적 values (111, 85, 90, 80, '우수');
INSERT into 성적 values (112, 85, 90, 80, '우수');
INSERT into 성적 values (113, 85, 90, 80, '우수');
SELECT 학번, 수학 FROM 성적 ORDER by 수학 DESC;

SELECT 학생,학번, 성명, 수학
from 성적, 학생
WHERE 성적.학번 = 학생.학번
ORDER by 수학 DESC;

SELECT avg(국어) as 국어평균,
       avg(영어) as 영어평균,
       avg(수학) as 수학평균
from 성적;



SELECT count(학번) from 학생 where 주소 ='부산';

SELECT 학생.학번, 성명 from 학생, 성적 
where 학생.학번 = 성적.학번 and 
성적.평가 like '%우수%';