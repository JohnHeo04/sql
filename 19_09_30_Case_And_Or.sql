SELECT * FROM `as_test`

SELECT `접수번호`, `접수시간`, `접수방법` FROM `as_test`


# Create table은 새로운 테이블을 만든다 = 접수날짜
CREATE TABLE `as_test_접수날짜` 
SELECT `접수번호` AS 번호, LEFT(`접수번호`, 8) AS 접수날짜 FROM `as_test`

SELECT `접수번호`, RIGHT(`접수번호`, 8) FROM `as_test`


SELECT 
	`처리시간` AS 처리시간_분,
	`처리시간`*60 AS 처리시간_초
FROM `as_test`;


# 2장 강의목록에 자주 사용하는 함수 목록 작성해 놓음
SELECT
	`접수번호`,
	LEFT(`접수번호`,4)
	SUBSTR(`접수번호`, 5, 2),
	SUBSTR(`접수번호`, 7, 2)
	CONCAT(LEFT(`접수번호`,4),"-",SUBSTR(`접수번호`, 5, 2),"-",SUBSTR(`접수번호`, 7, 2)) AS `as_test_date`
FROM `as_test`;


SELECT
	`접수번호`,
	CONCAT(LEFT(`접수번호`,4),"-",SUBSTR(`접수번호`, 5, 2),"-",SUBSTR(`접수번호`, 7, 2)) AS `as_test_date`
FROM `as_test`;

# AS 없이도 변수명 변경 가능함, 하지만 별칭을 꼭 붙여줘야함. 오류가 나면 헷갈리게 됨 -> , 요놈이랑.
SELECT
	접수번호 `접수자`
FROM `as_test`;



# Case When Then End
# If(	,  ,  )

# Sql에서는 'case'문을 굉장히 많이 씀.




SELECT
	`주민번호`
	SUBSTR(`주민번호`, 8,1),
	CASE
		WHEN SUBSTR(`주민번호`, 8,1)=1 THEN '남'
		WHEN SUBSTR(`주민번호`, 8,1)=2 THEN '여'
		ELSE NULL
	END AS 성별
	IF(SUBSTR(`주민번호`, 8,1)=1, '남', '여') AS성별
FROM `as_test`;

# 방문 한 사람만 뽑아 볼 수 있음.
SELECT *
FROM `as_test`
WHERE `접수방법` = '방문'; 
 


# 처리시간 중에 5분 초과인 자만 가져옴.
# >5 5분 초과한 시간은 '1'로 그 이하는 '0'으로 표시됨

# WHERE문은 '5이상인 것들만' 뽑아온다
SELECT
	`접수자`,
	`처리시간`,
	`처리시간`>5
FROM `as_test`
WHERE `처리시간`>5;


# 여러 조건을 만족할때는 'OR' 연산자를 써준다.
# 'AND'인 경우 둘다 맞을 경우만 사용함.


SELECT `접수번호`, `접수시간`, `접수방법`
FROM `as_test`
WHERE `접수방법`='방문' OR `접수방법`='우편';


SELECT `접수번호`, `접수시간`, `접수방법`
FROM `as_test`
WHERE `접수방법`='방문' AND `접수시간`>'12:00:00';



# 1.문제
# 12:00 ~ 13:00 사이에 접수된 자료를 선택하시오.

# 내답 하지만 Doesn't work...
SELECT `접수번호`, `접수시간`, `접수방법`
FROM `as_test`
WHERE `접수방법`='방문' AND '13:00:00'>`접수시간`>'12:00:00';

# 교수님 답
SELECT *
FROM `as_test`
WHERE `접수시간`>'12:00:00' AND `접수시간`<'13:00:00'

# sql에서는 작동하지 않음
'12:00:00' < `접수시간`<'13:00:00'

# 2.문제
# '수리여부'가 표시되지 않은 자료를 선택하시오.

# 교수님 답
# != 는 not인 자료들만 뽑아옴.
SELECT *
FROM `as_test`
WHERE `수리여부`='';


# 3.문제
# '방문'한 고객 중 '처리시간'이 '8'분 이상 소요된 자료의 '접수번호', '처리시간', '접수방법'을 선택하시오. 

# 교수님 답
SELECT `접수번호`, `처리시간`, `접수방법`
FROM `as_test`
WHERE `접수방법`='방문' AND `처리시간` >= 8;





























