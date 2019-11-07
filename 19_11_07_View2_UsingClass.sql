SELECT
	*
FROM `수강정보` 
LEFT JOIN `과목정보` USING (`과목코드`) 
LEFT JOIN `강사정보` USING (`강사코드`)
ORDER BY `학번`, `과목코드`;




CREATE OR REPLACE VIEW `v_수강` AS
SELECT
	`학번`,
	`과목코드`,
	`과목명`,
	`수강정보`. `학점` AS `과목학점`,
	`수강인원`,
	`강사코드`
FROM `수강정보` 
LEFT JOIN `과목정보` USING (`과목코드`) 
LEFT JOIN `강사정보` USING (`강사코드`)
ORDER BY `학번`, `과목코드`;


SELECT * FROM `v_수강`;



