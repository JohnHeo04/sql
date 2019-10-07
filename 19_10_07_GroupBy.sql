# Group By
# Sql을 쓴느 가장 큰 이유임
# 앞의 것들은 워밍업^^;

# Group By , Having만 알게되면 대부분 기능을 구사할 줄 안다고 봄.

SELECT
	`접수자`,
	AVG(`처리시간`) AS `처리시간_평균`,
	# *(별)표시는 모든 것 다 표시
	COUNT(*) AS `처리건수`,
	COUNT(DISTINCT `주민번호`),
	MIN(`접수시간`),
	MAX(`접수시간`),
	MIN(`처리시간`),
	MAX(`처리시간`),
	#이 사람이 하루에 얼마나 
	SUM(`처리시간`),
	STDDEV(`처리시간`),
	STDDEV_SAMP(`처리시간`)
	
FROM `as_test`
GROUP BY `접수자`;

# STDDEV 
# 전체 모집단에 대한 분산



# STDDEV_SAMP
# 표본에 대한 분산



SELECT
	`접수자`,
	GROUP_CONCAT(`수리여부`, SEPARATOR ",")
	
FROM `as_test`
GROUP BY `접수자`;

# 문자를 딱딱딱 붙여주는 함수

#원본데이터 필터할때는 Where!!

# Having은 필터기능을 한다. 원하는 열을 뽑아준다.
# Group By에서 필터할때는 Having

SELECT 
	`접수자`, 
	`고장형태`,
	SUM(`처리시간`) AS `처리시간_합`
FROM `as_test`
GROUP BY `접수자`, `고장형태`
HAVING `처리시간_합` >= 150;


# Group By, Having을 쓰는건 지금까지의 함수를 모두 쓸수 있다는 전제!



# 1.접수자 별로 처리 건수와 처리시간의 평균을 소수점 셋째 자리까지 구하시오.

SELECT
	`접수자`,
	COUNT(*) AS `처리건수`,
	AVG(`처리시간`) AS `처리시간_평균`,
	ROUND(AVG(`처리시간`),3)
FROM `as_test`
GROUP BY `접수자`;


# 2.접수 시간대 별로 처리건수를 구하고, 수리가 완료된 비율을 구하시오.

SELECT
	LEFT(`접수시간`,2) AS `접수시간_시`
	COUNT(*)
FROM `as_test`
GROUP BY `접수시간_시`;

3.

SELECT
	LEFT(`접수시간`,2) AS `접수시간_시`,
	`수리여부`,
	CASE WHEN `수리여부`="0" THEN ELSE 0 END AS `수리완료`
FROM `as_test`;

SELECT
	LEFT(`접수시간`,2) AS `접수시간_시`,
	AVG(CASE WHEN `수리여부`="O" THEN  ELSE 0 END) AS
`수리완료_비율`
FROM `as_test`
GROUP BY `접수시간_시`;

