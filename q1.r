#1a
data("mtcars")
model <- lm(mpg ~ wt,data=mtcars)
summary(model)
plot(mpg~wt,data = mtcars,main="linear regression",xlab="weight",ylab="mpg",col="green")# this is for own data ploting
abline(model,col="red",lwd=2)# ploting the best fit line for perdicted data

#1b
vec <- c(5,10,20,24,35,44)

#concatenation
new_vec <- c(vec, 4,4)
print(new_vec)

#indexing
ele_2 <- vec[2]
print(ele_2)

# negative indexing
print(vec[-1])
print(vec[-1:-3])

#subsetting
print(vec[1:4])
print(vec[vec>20])
