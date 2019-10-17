1.

CREATE TABLE `stock_daily`(
	`년월일` VARCHAR(20),
	`종가` INT UNSIGNED,
	`대비` INT UNSIGNED,
	`거래량_주` INT UNSIGNED,
	`거래대금_원` INT UNSIGNED,
	`시가` MEDIUMINT(15) UNSIGNED, 
	`고가` MEDIUMINT(9) UNSIGNED,
	`저가` MEDIUMINT(9) UNSIGNED,
	`시가총액_백만` INT UNSIGNED,
	`상장주식수_주` INT UNSIGNED
);


2.
LOAD DATA INFILE "C:/Users/PC38233/stock_daily.csv"
	INTO TABLE `stock_daily` CHARACTER SET "utf8"
	FIELDS TERMINATED BY ","
	LINES TERMINATED BY '\n'
	IGNORE 1 LINES;

3.
SELECT `




