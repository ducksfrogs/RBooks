load("data/data.rdata")
data <- data
length(data)
summary(data)
table(data)
hist(data, breaks = seq(-0.5, 9.5, 1))
seq(-0.5, 9.5, 1)
var(data)
sd(data)
sqrt(var(data))

y <- 0:9
prob <- dpois(y, lambda = 3.56)

plot(y, prob, type='b', lty=2)
sum(prob)
hist(data) 
lines(y, 50*prob)
logL <- function(m) sum( dpois(data, m, log=TRUE))
lambda <- seq(2,5, 0.1)
plot(lambda, sapply(lambda, logL), type="l")