id <- c(1, 2, 3, 4, 5)
sex <- c("F", "F", "M", "M", "M")
height <- c(160, 165, 170, 175, 180)
weight <- c(50, 65, 60, 55, 70)

MYDATA <- c(ID=id, SEX=sex, HEIGHT= height, WEIGHT=weight)

head(MYDATA)
edit(MYDATA)
summary(MYDATA)
plot(MYDATA)
cor(MYDATA)
corr(MYDATA)
apply(MYDATA[,  c(1,3)], 2, mean)
by(MYDATA[, c(1,3)], MYDATA$SEX, mean)

aggregate(MYDATA[, c(1, 3), list(MYDATA[,2]), mean])
MYDATA
data()
library(survival)
data(survival)
