### VIEW에서는 AS를 무조건 붙여줘야함.
CREATE OR REPLACE VIEW `v_as_test` AS
SELECT
	`id`,
	`접수번호`,
	`접수자`,
	`처리시간`,
	`수리여부`
FROM `as_test`;

SELECT * FROM `v_as_test`;


### 지울때는 DROP VIEW
DROP VIEW `v_as_test`;


### 처리시간 5분 넘아가는거 #왼쪽 Views에서 볼 수 있음
CREATE OR REPLACE VIEW `v_as_test` AS
SELECT
	`id`,
	`접수번호`,
	`접수자`,
	`처리시간`,
	`수리여부`
FROM `as_test`
WHERE `처리시간` > 5;






