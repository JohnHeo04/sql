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








