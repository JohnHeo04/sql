CREATE TABLE `subquery_t1` (
`id` INT UNSIGNED,
`subject` VARCHAR(10),
`score` INT UNSIGNED
);


INSERT INTO `subquery_t1` VALUES
(1,'a',14),
(1,'b',57),
(2,'c',85),
(2,'d',49),
(3,'e',46);


CREATE TABLE `subquery_t2` (
`id` INT UNSIGNED,
`subject` VARCHAR(10),
`score` INT UNSIGNED
);
INSERT INTO `subquery_t2` VALUES
(1,'a',14),
(1,'b',18),
(2,'a',73),
(3,'c',85),
(4,'d',65);

### [scalar] `subquery_t1`의 평균 `score`보다 크거나 같은 `score`를
### `subquery_t2`에서 선택

SELECT AVG(`score`)
FROM `subquery_t1`;

SELECT * FROM `subquery_t2` WHERE `score`>=50.2

### 1.subquery를 이용하여 줄이기, 이렇게 하면 윗줄 처럼 
### 계속 평균을 확인하지 않고 자동으로 계산해준다.
SELECT * FROM `subquery_t2` WHERE `score`>=(SELECT AVG(`score`) FROM `subquery_t1`);

### 2.[single column] `subquery_t1`에 있는(또는 없는) `id`를 
### `subquery_t2`에서 선택
SELECT DISTINCT`id` FROM `subquery_t1`;
# distinct는 중복 제거한다.

# IN은 
SELECT * FROM `subquery_t2` WHERE `id` IN (1,2,3);
SELECT * FROM `subquery_t2` WHERE `id` NOT IN (1,2,3);

# SUBQUERY는 괄호 안에 있어야한다. 
SELECT * FROM `subquery_t2` WHERE `id` IN (SELECT DISTINCT`id` FROM `subquery_t1`
);



### 3.[single row] `subquery_t1`의 `subject`="b"인 조건을 만족하는 `id`,
### `subject`를 `subquery_t2`에서 선택
SELECT `id`, `subject` FROM `subquery_t1` WHERE `subject` ="b";
SELECT * FROM `subquery_t2` WHERE  (`id`, `subject`)=(1,"b");


###### 코드 줄이기? 괄호 안에 넣어버리는 방법_ 위에서 아래로
SELECT * FROM `subquery_t2` WHERE  (`id`, `subject`)=(SELECT `id`, 
`subject` FROM `subquery_t1` WHERE `subject` ="b");


/* 4. [table] `subquery_t1`의 `id`별 평균 `score`의 평균을 계산 */
SELECT `id`, AVG(`score`) AS `score_avg`
FROM `subquery_t1` GROUP BY `id`;

CREATE TABLE `subquery_t1_avg`
SELECT `id`, AVG(`score`) AS `score_avg`
FROM `subquery_t1` GROUP BY `id`;

CREATE TABLE `subquery_t1_avg`
SELECT `id`, AVG(`score`) AS `score_avg`
FROM `subquery_t1` GROUP BY `id`;
SELECT AVG(`socre_avg`) FROM `subquery_t1_avg`;


SELECT AVG(`socre_avg`)
FROM (SELECT `id`, AVG(`score`) AS `score_avg`
FROM `subquery_t1` GROUP BY `id`) AS A;



/* subquery 최적화 */
/* `subquery_t1`에 있는 (또는 없는) `id`를 `subquery_t2`에서 선택 */
SELECT DISTINCT t2.*
FROM `subquery_t2` AS t2
LEFT JOIN `subquery_t1` AS t1 ON t2.`id`=t1.`id`
WHERE t1.`id` IS NOT NULL; # Null이 지워짐.




### 3.[single row] `subquery_t1`의 `subject`="b"인 조건을 만족하는 `id`,
### `subject`를 `subquery_t2`에서 선택
SELECT t2.*
FROM `subquery_t2` t2
LEFT JOIN `subquery_t1` t1 ON t2.`id`=t1.`id` AND t2.`subject`=t1.`subject`
WHERE t1.`subject`="b";






