data("women")
plot(women$height, women$weight)
cor(women$height, women$weight)
lm(women$height~women$weight, data = women)
?abline
T <-rnorm(100, 50,10)
hist(T)
dnorm(100,50,10)
curve(dnorm(x,50,10), 0, 100)
pnorm(60, 50, 10)
max(T)
min(T)
T
T[1:10]
which.min(T)
mean(T)
summary(T)
Z <- sample(T,5)
Z
coin <- c("Head", "Tail")
sample(coin)
sample(coin, 5, replace = TRUE)
sample(coin, 5, replace = T)

S <- 1000
rec <- numeric(S)
S
for(i in 1:S){rec[i] <-mean((rnorm(100,50,10)))}
rec
hist(rec)
momon <- numeric(S)
typeof(momon)
numeric(8)
numeric(3)
summary(rec)
sample(1:6, 10, replace = TRUE)
diceSamp <- mean(sample(1:6, 10, replace = TRUE))
diceSamp

diceSamp <- mean(sample(1:6, 10000, replace = TRUE))
diceSamp
