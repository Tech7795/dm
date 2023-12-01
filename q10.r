#10a
data("iris")
library("fpc")

result <- dbscan(iris[1:4],eps = 0.42,MinPts = 5)
print(result)

plot(result,iris[-5])


#10b
EMPID <-c(1,2,3,4,5)
EMPNAME <-c('satish','vani','ramesh','praveen','pallavi')
SALARY <- c(5000,7500,10000,9500,4500)
STARTDATE <- c('01-11-2013','05-06-2011','21-09-1999','13-09-2005','23-10-2000')
emp_df <- data.frame(EMPID,EMPNAME,SALARY,STARTDATE)    

col <- data.frame(emp_df$EMPID,emp_df$SALARY)
col


x1 <- emp_df[1:2, ]
x1

x2 <- emp_df[c(3,5),c(2,4)]
x2