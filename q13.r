min_max_norm <- function(x){
  (x-min(x))/(max(x) - min(x))
}

iris_minmax <- as.data.frame(lapply(iris[1:4],min_max_norm))
iris_minmax$Species <- iris$Species
head(iris_minmax)

iris_zscore <- as.data.frame(lapply(iris[1:4],scale))
iris_zscore$Species <- iris$Species
head(iris_zscore)

library(swirl)
library(dplyr)

install_course("Getting and Cleaning Data")
swirl()


names <- letters[1:5]
ages <- c(22,21,24,25,20)
marks <- c(25,25,27,28,24)
df <- data.frame(names,ages,marks,stringsAsFactors = FALSE)

tb <- tbl_df(df)
rm("df")
tb

select(tb,names,marks)

filter(tb,marks > 25)

arrange(tb,marks)

mutate(tb,percentage = (marks/30)*100)

summarize(tb,avg_marks = mean(marks))