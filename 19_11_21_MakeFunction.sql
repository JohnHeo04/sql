# 구문이 끝날때 ;(세미콜론)대신 $$로 바꾸겠다.
# Reason is 함수를 만들기 위해
# 아무것으로 바꿔도 상관없음

# SimpleCompare(3,5)
# 3<5

DELIMITER $$ 

# SimpleCompare 함수 만들기
# SimpleComare(n 다음들어올 숫자가 INT형이다. m도 마찬가지 INT형이다.
CREATE FUNCTION SimpleCompare(n INT, m INT)
RETURNS VARCHAR(20)
# 함수가 이 안에서 정의되도록 도와주어야함.

BEGIN
	DECLARE a, s VARCHAR(20);	# a,s는 연산자로 쓰일 예정임
	CASE # 이렇게 되면 case문이 끝나게 됨.
		WHEN n>m THEN SET a=">";
		WHEN n=m THEN SET a="=";
		WHEN n<m THEN SET a="<";
	END CASE;
	
	SET s=CONCAT(n,a,m);
	RETURN s;
	
END $$ 

# 함수가 끝내게 되면 DELIMITER을 이용해 또 ;(세미콜론)으로 바꿔줌
DELIMITER ;


# Test
SELECT SimpleCompare(3,5);

SELECT SimpleCompare(5,5);

CREATE TABLE t_simple(
	a INT, b INT
);
INSERT INTO t_simple VALUES 
	(1,5),(2,4),(3,3),(4,2),(5,1);

SELECT
	SimpleCompare(a,b)
FROM t_simple;




