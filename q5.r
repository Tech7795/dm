#5a
install.packages("fpc")
install.packages("dbscan")
library("fpc")
result=dbscan(iris[-5],eps=0.42,MinPts = 5)
print(result)
plot(result,data=iris[-5])

#5b
min_max=function(x)
{
  return((x-min(x))/(max(x)-min(x)))
}
Znorm=function(x)
{
  return((x-mean(x))/sd(x))
}
mmnorm=as.data.frame(lapply(iris[-5],min_max))
print(head(mmnorm))
znorm=as.data.frame(lapply(iris[-5],scale))
print(head(znorm))
znorm=as.data.frame(lapply(iris[-5],Znorm))
print(head(znorm))
