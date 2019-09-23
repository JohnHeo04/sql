CREATE TABLE `Student_info`(
	Stud_no CHAR(10) PRIMARY KEY,
	Stud_name VARCHAR(10) NOT NULL,
	Stud_sno BIGINT,
	Stud_email VARCHAR(255),
	Stud_addr VARCHAR(255),
	Stud_mobile VARCHAR(20)
) DEFAULT CHARSET=euckr;


# PRIMARY KEY 굉장히 중요함. 
# 데이터를 한줄씩 봤을때 한줄씩 식별할 수 있는 값
# 유니크한 속성을 가지고 있다.

CREATE TABLE `Student_2` LIKE `student_info`;

CREATE TABLE `교통사고다발지역_자전거`
SELECT * 
FROM `교통사고다발지역`;
WHERE `사교유형구분` = "자전거";

# * 데이터 다 가져옴

/* 파일로부터 자료입력 */
LOAD DATA LOCAL INFILE 'C:/Users/PC38217/Downloads/도로교통공단_교통사고다발지역_20190725.csv'
INTO TABLE `교통사고다발지역`
FIELDS TERMINATED BY ',' OPTIONALLY ENCLOSED BY '\"' ESCAPED BY '\\'
LINES TERMINATED BY '\r\n'
IGNORE 1 LINES;












