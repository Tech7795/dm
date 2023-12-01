#6a
install.packages("party")
library(party)
data("readingSkills")
tree=ctree(nativeSpeaker~age+shoeSize+score,data=readingSkills[1:106,])
plot(tree)



#6b
l1 <- list(2,2,'a')
l2 <- list(3,'hello')

#accessing
l1[3]

#merging
new_list <- c(l1,l2)
print(new_list)

#converting
vec <- unlist(l1)
print(vec)
