#4a

install.packages("cluster")
library(cluster)
data("iris")
result <- pam(iris,3)
result
result$medoids
result$cluster
#table(result$cluster,iris$Species)
plot(result)

#4b
df=data.frame("A"=c(1:10),"B"=LETTERS[1:10])
df
ncol(df)
str(df)
colnames(df)
names(df)
sapply(df[1],sum)

