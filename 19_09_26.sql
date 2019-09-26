SELECT * FROM `as_test`

SELECT `접수번호`, `접수시간`, `접수방법` FROM `as_test`

CREATE TABLE `as_test_접수날짜` 
SELECT `접수번호` AS 번호, LEFT(`접수번호`, 8) AS 접수날짜 FROM `as_test`

SELECT `접수번호`, RIGHT(`접수번호`, 8) FROM `as_test`
