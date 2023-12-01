#7a
data("iris")
library("party")

ind <- sample(1:nrow(iris),nrow(iris)*0.7)
train_data <- iris[ind,]
test_data <- iris[-ind,]

tree <- ctree(Species ~ Sepal.Length+Sepal.Width+Petal.Length+Petal.Width, data = train_data)
plot(tree)
#tree <- ctree(Species ~ Sepal.Length+Sepal.Width+Petal.Length+Petal.Width, data = test_data)
#plot(tree)


#7b
#exporting to csv file.
v <- c(1,2,3,4,4)
d <- c('a','b','c','d','e')
df <- data.frame(v,d)
write.csv(df,file="output.csv",row.names = F)

#importing from csv file.
csv_data <- read.csv("output.csv")
csv_data
