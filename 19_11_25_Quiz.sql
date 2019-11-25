# JOIN할때 참고할점
# JOIN과 ON은 같은형태로 항상 같이 다님.


#1.문제)
SELECT * FROM `nurse`
WHERE `Registered` = 0

#2.문제)
SELECT * FROM `nurse`
WHERE `Position` = 'Head Nurse'

#3.문제)
SELECT * FROM `physician`

#3.문제) - 교수님
SELECT
	B.`NAME` AS "Department Name"
	A.`NAME` AS "Physician Name"
FROM `department` A
JOIN `physician` B
ON A.`Head` = B.`EmployeeID`


SELECT B.


#4.문제)
SELECT * FROM `appointment`


4.문제
SELECT COUNT( 















8.문제) - 교수님
SELECT `affilliated_with` A
JOIN `physician` B
		ON A.`Physician`=B.`EmployeeID`
JOIN `depqartment`C
	`department` C
	ON A.`Department`-C.`DepartmentID`















