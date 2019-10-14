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






# LOCAL 을 빼니까 작동함.;;;
# 지금까지 웬 뻘짓...ㅠㅠㅠㅠㅠㅠㅠㅠㅠㅠㅠ

CREATE TABLE aisles(
	aisle_id INT UNSIGNED,
	aisle VARCHAR(255)
);
LOAD DATA INFILE "C:/Users/PC38233/aisles.csv"
	INTO TABLE `aisles` CHARACTER SET "utf8"
	FIELDS TERMINATED BY ","
	LINES TERMINATED BY '\n'
	IGNORE 1 LINES;
	
	
# Error
CREATE TABLE departments(
	department_id INT UNSIGNED,
	department VARCHAR(255)
);
LOAD DATA INFILE "C:/Users/PC38233/departments.csv"
	INTO TABLE `departments` CHARACTER SET "utf8"
	FIELDS terminate BY "," OPTIONALLY ENCLOSED BY
	'\"' ESCAPED BY "\\"
	LINES TERMINATED BY '\n'
	IGNORE 1 LINES ;
# Again
CREATE TABLE departments(
	department_id INT UNSIGNED,
	department VARCHAR(255)
);
LOAD DATA INFILE "C:/Users/PC38233/departments.csv"
	INTO TABLE `departments` CHARACTER SET "utf8"
	FIELDS TERMINATED BY ","
	LINES TERMINATED BY '\n'
	IGNORE 1 LINES;



CREATE TABLE order_products_train(
		order_products_train_id INT UNSIGNED,
		order_products_train VARCHAR(255)
);
LOAD DATA INFILE "C:/Users/PC38233/order_products_train.csv"
	INTO TABLE `order_products_train` CHARACTER SET "utf8"
	FIELDS TERMINATED BY ","
	LINES TERMINATED BY '\n'
	IGNORE 1 LINES;


C:/Users/PC38233









