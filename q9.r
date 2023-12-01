#9a
install.packages("tm")
library(tm)

text1 <- c("A rose is a rose is a rose.",
           "A Rose is red, a violet is blue!",
           "A rose by any other name would smell as sweet.")

corpus <- Corpus(VectorSource(text1))

corpus <- tm_map(corpus, content_transformer(tolower))
corpus <- tm_map(corpus, removePunctuation)
corpus <- tm_map(corpus, removeNumbers)
corpus <- tm_map(corpus, removeWords, stopwords("en"))

dtm <- DocumentTermMatrix(corpus)
dtm
tfm <- as.matrix(dtm)
tfm
word_frequencies <- colSums(tfm)
word_frequencies




#9b
vec <- c(2,3,4,3,3,2,3,3,1,2,2,4,5)

hist(vec,main='histogram',col='green',xlab='numbers',ylab='frequency')

heights <- c(165,172,170,171,164,161,160)
weights <- c(55,60,60,62,70,58,64)
plot(weights,heights,col='red',main="scatter plot",xlab = "weights",ylab="heights")