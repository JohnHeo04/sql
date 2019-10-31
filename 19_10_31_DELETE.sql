CREATE TABLE t (
	id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
	val VARCHAR(50)
);
### AUTO INCREMENT는 속성을 무시하고 계속 증가한다.?
### I can't understood this section... hmmm



INSERT INTO t (val) VALUES ("a");
INSERT INTO t (val) VALUES ("b");

SELECT * FROM t;

### 단순히 데이터만 지움, 
DELETE FROM t WHERE t;


# 완전히 데이터를 초기화 시킨다.
TRUNCATE TABLE t;


CREATE TABLE `미국맥주_copy` LIKE `미국맥주`;
INSERT INTO `미국맥주_copy` SELECT * FROM `미국맥주`;

SELECT `상품명`, `염분` FROM `미국맥주_copy` WHERE `염분` < 10;
DELETE FROM `미국맥주_copy` WHERE `염분` < 10;



### 미국맥주 데이터
SELECT `상품명`, `염분` FROM `미국맥주







