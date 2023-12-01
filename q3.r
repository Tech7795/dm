#3a
data("iris")
result <- kmeans(iris[-5],3)
result
result$cluster
result$withinss
result$centers
result$size
table(result$cluster,iris$Species)
plot(Sepal.Length ~ Sepal.Width,data = iris,col = result$cluster)

#3b

vec <- c(11,22,33)

#subsetting
print(vec[1:2])
vec[vec>22]

#multiply
ans <- vec*3
print(ans)

#perform ops

a <- c(1,2)
b <- c(3,1)

print(a+b)
print(a-b)
print(a*b)
print(a/b)