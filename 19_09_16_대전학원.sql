DROP TABLE IF EXISTS test_data_type;

CREATE TABLE test_data_type(
	t_id SERIAL, 
	t_int INT, 
	t_int4 INT(4) ZEROFILL, 
	t_dt TIMESTAMP
);


#SELECT 앞으로 아주 유용하게 쓰일 것임
SELECT  '   a'='a';





DROP TABLE IF EXISTS '대전학원'(
	구분 CHAR (3),
	교육지원청 CHAR (2),
	학원및교습소명 VARCHAR (50),
	주소 VARCHAR (255),
	설립자_성명 VARCHAR(50),
	전화번호 VARCHAR(50),
	교습과정 VARCHAR(50),
	교습과목_반 VARCHAR(50),
	정원 SMALLINT,
	교습기간 VARCHAR(50),
	총교습시간_분 SMALLINT,
	교습비 INT,
	모의고사비 
	재료비
	급식비
	기숙사비
	차량비
	피복비
	기타경비합계
	총교습비
	강사수
	
);