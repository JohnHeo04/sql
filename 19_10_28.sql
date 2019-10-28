CREATE TABLE `t1`(
	`col1` INT UNSIGNED,
	`col2` INT UNSIGNED
	);
	
INSERT INTO `t1`
VALUES (1,2),(2,4),(3,6),(4,8),(5,10);

UPDATE `t1` SET `col1`=`col1`+1,
		`col2`=`col1`*2;
		
UPGRADE `t1`
SET
	`col1`="1";
	
	
CREATE TABLE `t`(
`id` INT UNSIGNED AUTO_INCREMENT,
`val` INT UNSIGNED, PRIMARY KEY (`id`));
INSERT INTO `t` (`val`)
VALUES (10), (20), (30), (40), (50);
	
# 에러가 난 이유	첫번째 값이 1이였는데 2로 저장하려다 보니 그다음줄에 들어가있음. 
### Primary key이기 때문에 중복 값이 불가능함.
UPDATE `t`
SET `id` = `id`+1;
	
#하지만 Order by를 이용하면 바꿀 수 있음
UPDATE `t`
SET `id` = `id`+1
ORDER BY `id` DESC;
	
	
	
	
	
	
	