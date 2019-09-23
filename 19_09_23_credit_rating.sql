INSERT [LOW_PRIORITY | DELAYED | HIGH_PRIORITY] [IGNORE]
[INTO] tbl_name [(col_name,...)]
{VALUES | VALUE} ({exper | DEFAULT},...),(...),...
[ON DUPLICATE KEY UPDATE col_name=expr [, col_name=expr] ... ]





CREATE TABLE `student`(
	stud_no INT UNSIGNED,
	stud_name VARCHAR(50),
	stud_age TINYINT UNSIGNED
);


INSERT INTO `student` VALUES('100', '방국봉', '28');

INSERT INTO `student` (`stud_no`)
VALUES
	(107, "John");
	

CREATE TABLE `credit_rating`(
	고객번호 INT UNSIGNED PRIMARY KEY,
	결혼상태 VARCHAR(10),
	신용카드 VARCHAR(10),
	주택소유 VARCHAR(10),
	집세 SMALLINT UNSIGNED,
	수입 SMALLINT UNSIGNED,
	연령 TINYINT UNSIGNED,
	거주년수 SMALLINT UNSIGNED,
	교육년수 SMALLINT UNSIGNED,
	고객년수 SMALLINT UNSIGNED,
	근무년수 SMALLINT UNSIGNED,
	신용도 VARCHAR(5)
);




LOAD DATA LOCAL INFILE

