### [고장형태]가 "통화품질" 인 요청을 추출하십시오.
SELECT * FROM as_test WHERE 고장형태 = '통화품질';

### [접수자] "058", "063", "082"는 [수리여부] 항목에 "X"을 표시하지 않았다고 한다. 표시하지 않은 항목을 모두 "X"로 수정하시오.
SELECT 접수자 FROM as_test WHERE 수리여부='' GROUP BY 접수자;

### 세 번 이상 액정 수리를 요청한 사람이 존재하는지 확인하시오.
SELECT 주민번호, COUNT(*) FROM as_test WHERE 수리여부 = 0 AND 고장형태 = '액정' GROUP BY 주민번호 HAVING COUNT(*)>=3;

### 전체 요청자의 남/여 비율을 구하시오.
SELECT AVG(2-SUBSTR(주민번호,8,1)) FROM 'as_test';
# 남
SELECT AVG(SUBSTR(주민번호,8,1)-1) FROM 'as_test';


# 코드해석

# SELECT 안에 있는 데이터를 골라온다.
# * 열을 뜻함.
# FROM 'as_test'에 있는 열을 가져와라.
# WHERE '고장형태'에 있는 통화품질을 가져와라.