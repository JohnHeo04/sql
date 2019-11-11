install.packages("RMySQL")
library("RMySQL")

# 잘 저장했다가 다른곳에서 쓸때 그대로 이용하기
mysql.host <- "localhost"
mysql.id <- "root"
#만약 ps가 있다면 안에 입력
mysql.pw <- ""
mysql.db <- "test"

con <- dbConnect(
      RMySQL::MySQL(), # 사용하는 DB마다 바꿔주면 됨 
      host=mysql.host, 
      user=mysql.id,
      password=mysql.pw,
      dbname=mysql.db
)

dbSendQuery(con, "SET NAMES euckr")

query.str <- "select * from as_test"
query.rs <- dbSendQuery(con, query.str)
rs <- fetch(query.rs)
head(rs)













































