#2a
data("mtcars")

model <- lm(mpg~disp+hp+wt,data = mtcars)
summary(model)

mpg_predicted <- predict(model,data=mtcars)
plot(mpg~wt,data=mtcars,col= 'green')
points(mpg_predicted~wt,data=mtcars,col = 'red')#points() function is used to point in the plotted graph

#2b
df=data.frame("A"=c(1:10),"B"=LETTERS[1:10])
df
head(df)
tail(df)
dim(df)
nrow(df)
ncol(df)
str(df)
names(df)
