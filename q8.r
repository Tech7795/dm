#8a
library("rpart")
data("iris")

ind <- sample(1:nrow(iris),nrow(iris)*0.7)
train_data <- iris[ind,]
test_data <- iris[-ind,]

tree <- rpart(Species ~ Sepal.Length+Sepal.Width+Petal.Length+Petal.Width, data = train_data)
par(xpd= NA)
plot(tree)
text(tree,digits = 1)

#8b
data <- c(23,1,2,3,3,3,1,3,NA,5,6)

print(mean(data,na.rm= TRUE))
print(median(data,na.rm=TRUE))

##getmode <- function(x){
#  y <- table(x)
#  m <- names(y)[which.max(y)]
 # return(m)
##}
print(getmode(data))

print(IQR(data,na.rm= TRUE))
r=range(data,na.rm=T)
r[2]-r[1]


install.packages("DescTools")
library("DescTools")
Mode(data,na.rm = T)
