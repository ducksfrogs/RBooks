library(survival)
result <- glm(status ~ x, data = aml, family = binomial)
summary(result)
head(aml)

data("USArrests")
prcomp(USArrests)
prcomp(USArrests, scale =T)

plot(prcomp(USArrests))
summary(prcomp(USArrests, scale =T))


hc <- hclust(dist(USArrests), "ave")
plot(hc)
head(USArrests)
summary(hc)
USArrests$Murder
USArrests
USArrests['Iowa']

head(USArrests)
USArrests[3,]
USArrests[USArrests$=="Iowa"]
myUsaarrests <- USArrests
head(myUsaarrests)
typeof(myUsaarrests)
dat <- as.data.frame(myUsaarrests)
typeof(dat)
head(dat)
myUsaarrests[myUsaarrests$Murder >=13,]


data(cars)
head(cars)
plot(cars, main="lowess(cars)")
lowess(cars, f = 1)
lines(lowess(cars), col=2)
lines(lowess(cars, f=0.2), col=3)


f <- function(x) 20/(1 + 50 * exp(-0.8 * x))
x <- 1:20
y <- f(jitter(x))
(result <- nls(y~a / (1 + b* exp(-c*x)), start=c(a=50, b=20, c=0.1)))

predict.c <- predict(result)

plot(x, y, xlim = c(0,20), ylim = c(0,20))
par(new=T)
plot(predict.c, type = "l", xlim = c(0,20), ylim = c(0,20))

data("iris3")
head(iris3)

Iris <- data.frame(rbind(iris3[,,1], iris3[,,2], iris3[,,3]),
                   Sp = rep(c("s", "c", "v"), rep(50, 3)))
train <- sample(1:150, 75)
table(Iris$Sp[train])
iris3[1,,3]
iris3[1,,2]
iris3[1,,1]

iris3
typeof(iris3)
str(iris3)
summary(iris3)
