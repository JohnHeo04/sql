# JOIN 굉장히 중요함.

# CROSS JOIN 
# 각 행의 모든 조합을 만들어 낸다.
# 일반적으로는 잘 사용하지 않음.

# EQUI-JOIN
# 주어진 조인-조건을 만족하는 행을 반환
# 하나의 결과로 Combine시킴



# LEFT JOIN
# 왼쪽이 기준임.
# 왼쪽에서 오른쪽 테이블로 붙임

# RIGHT JOIN
# 오른쪽 테이블이 기준임.

# 웬만하면 LEFT조인으로 통일시켜서 써주는게 좋음.

CREATE TABLE department
(
 DepartmentID INT PRIMARY KEY,
 DepartmentName VARCHAR(20)
);

CREATE TABLE employee
(
 LastName VARCHAR(20),
 DepartmentID INT REFERENCES department(DepartmentID)
);

INSERT INTO department VALUES(31, 'Sales');
INSERT INTO department VALUES(33, 'Engineering');
INSERT INTO department VALUES(34, 'Clerical');
INSERT INTO department VALUES(35, 'Marketing');

INSERT INTO employee VALUES('Rafferty', 31);
INSERT INTO employee VALUES('Jones', 33);
INSERT INTO employee VALUES('Heisenberg', 33);
INSERT INTO employee VALUES('Robinson', 34);
INSERT INTO employee VALUES('Smith', 34);
INSERT INTO employee VALUES('Williams', NULL);



SELECT
*
FROM `employee` LEFT JOIN `department` 
ON `employee`. `Department` = `department`.`DepartmentID`;

# 코드 줄이기
SELECT
	A.*
FROM `employee` A LEFT JOIN `department` B 
ON A. `Department` = B.`DepartmentID`;
	
# 코드 더! 줄이기/ `USING`
# ex) USING(`___`,`___`,`___`)
SELECT
*
FROM `employee` LEFT JOIN `department` 
USING (`DepartmentID`);

# 또 더 줄이기!
SELECT
	*
FROM `employee` A LEFT JOIN `department` B 
ON A. `Department` = B.`DepartmentID`
WHERE B. `DepartmentID` IS NOT NULL;





