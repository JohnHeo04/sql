
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









