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

##### 연결해서 쿼리 작성하고 보내고 받고 굉장히 중요함.
query.str <- "select * from as_test"
query.rs <- dbSendQuery(con, query.str)
rs <- fetch(query.rs,-1)
head(rs)
dim(rs)

class(rs)

rs$접수방법 
tb <- table(rs$접수방법)
barplot(tb)



##### 반대로 데이터를 DB로 입력하기

iris
dbWriteTable(con, "iris", iris, row.names=F)
query.str <- "ALTER TABLE `test`.`iris`
      CHANGE `Species` `Species` VARCHAR(20), 
      CHANGE `Sepal.Length` `Sepal.Length` float" 

dbRemoveTable(con, "iris")
x




query.rs <- dbSendQuery(con, query.str)

dbRemoveTable(con, "iris")

data <- read.csv(choose.files())
dim(data)
head(data)
dbWriteTable(con, "export", data)

dbListTables(con)

dbReadTable(con, "미국맥주")

# DB강제로 끊기
dbDisconnect(con)






















