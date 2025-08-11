-- 학생 테이블 생성
CREATE TABLE 학생 (
    학번 VARCHAR(10) PRIMARY KEY,
    성명 VARCHAR(20) NOT NULL,
    주소 VARCHAR(100)
);

-- 성적 테이블 생성
CREATE TABLE 성적 (
    학번 VARCHAR(10) PRIMARY KEY,
    국어 INT(3),
    영어 INT(3),
    수학 INT(3),
    평가 VARCHAR(1000),
    FOREIGN KEY (학번) REFERENCES 학생(학번)
);

-- 샘플 데이터 삽입 (학생 테이블)
INSERT INTO 학생 VALUES 
('S001', '김철수', '서울시 강남구'),
('S002', '이영희', '부산시 해운대구'),
('S003', '박민수', '대구시 수성구'),
('S004', '정수연', '인천시 남동구'),
('S005', '최지훈', '광주시 서구');

-- 샘플 데이터 삽입 (성적 테이블)
INSERT INTO 성적 VALUES 
('S001', 85, 90, 88, 'A'),
('S002', 78, 82, 75, 'B'),
('S003', 92, 88, 95, 'A'),
('S004', 70, 75, 68, 'C'),
('S005', 88, 85, 90, 'A');

-- 테이블 조회
SELECT * FROM 학생;
SELECT * FROM 성적;

-- 학생과 성적 정보를 함께 조회
SELECT 
    s.학번, 
    s.성명, 
    s.주소, 
    g.국어, 
    g.영어, 
    g.수학, 
    g.평가
FROM 학생 s 
JOIN 성적 g ON s.학번 = g.학번;