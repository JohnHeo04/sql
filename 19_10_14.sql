#  Data: http://www.airkorea.or.kr/ > 통계정보 > 최종확정 측정자료 조회 > 확정자료 다운로드 > 2018 다운로드

USE test;

CREATE TABLE `2018년 4분기` (
`지역` CHAR(7) NOT NULL,
`망` CHAR(6) NOT NULL,
`측정소코드` MEDIUMINT(8) UNSIGNED NOT NULL,
`즉정소명` VARCHAR(50) DEFAULT NULL,
`측정일시` CHAR(10) NOT NULL,
`SO2` FLOAT DEFAULT NULL,
`CO` FLOAT DEFAULT NULL,
`O3` FLOAT DEFAULT NULL,
`NO2` FLOAT DEFAULT NULL,
`PM10` SMALLINT(6) DEFAULT NULL,
`PM25` SMALLINT(6) DEFAULT NULL,
`주소` VARCHAR(255) DEFAULT NULL
);



# 2.자료 저장
LOAD DATA LOCAL INFILE "C:/Users/PC38233/2018년 4분기.CSV"
INTO TABLE `2018년 4분기` CHARACTER SET "euckr"
FIELDS TERMINATED BY ","
LINES TERMINATED BY '\r\n'
IGNORE 1 LINES;


# 4. `지수구분_PM10` 

CREATE TABLE `2018년_4분기_PM10`
SELECT
	`지역`,
	`측정일시`,
	`PM10`,
	CASE
		WHEN `PM10`>150 THEN "매우나쁨"
		WHEN `PM10`>80 THEN "나쁨"
		WHEN `PM10`>30 THEN "매우나쁨"
		WHEN `PM10`>0 THEN "나쁨"
		ELSE NULL
	END AS `지수구분_PM10`
FROM `2018년 4분기`;
		
		
# 5. `2018년_4분기_PM10` table에서 "대전 대덕구~ 지역에 대한 `지수구분_PM10`별 최근 측정일시 확인 */
SELECT
	`지역`,
	`지수구분_PM10`,
	MAX(`측정일시`) AS `측정일시_최근`,
	COUNT(`지수구분_PM10`) AS `지수구분_PM10_count`,
	COUNT(*)
FROM `2018년_4분기_PM10`
WHERE `지역`="대전 대덕구"
GROUP BY `지역`, `지수구분_PM10`
HAVING ;
		
		
		
		
		
		
		
		
		
		
		
		
		
		
