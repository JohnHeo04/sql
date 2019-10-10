# http://www.airkorea.or.kr/
# 통계정보 > 최종확정 측정자료 조회 > 확정자료 다운로드 > 2018 다운로드

# 1.테이블 생성
#	- create table '2018_4분기'();
# 2.자료 저장
#	- load data infile
#	- '2018년_4분기' 우클릭 > import > importCSV data...
# 3.지역, 측정일시, PM10 선택
# 4. 'PM10_구분' 열 생성
#	- 좋음, 보통, 나쁨, 매우 나쁨
# 5. "대전 대덕구" 지역에서 'PM10_구분'별 최근 측정일시 확인 
#	- group by
#
# 최종적으로는 '이런'데이터가 만들어져야함 (아래 참조)	
# 좋음 2018123003
#
#
#

# 1.테이블 생성

CREATE TABLE `2018년_4분기`(
	지역 CHAR(10),
	망 CHAR(10),
	측정소코드 INT,
	측정일시 MEDIUMINT,
	SO2 FLOAT,
	CO FLOAT,
	O3 FLOAT,
	NO2 FLOAT,
	PM10 FLOAT,
	PM25 INT(10),
	주소 VARCHAR(255)
);

# 2.자료 저장
LOAD DATA LOCAL INFILE `C:/Users/PC38233`
INTO TABLE 2018년_4분기
FIELDS TERMINATED BY '\t' OPTIONALLY ENCLOSED BY '\"' ESCAPED BY '\\'
LINES TERMINATED BY '\r\n'
IGNORE 1 LINES;

# 데이터가 안불러와진다..;;



























