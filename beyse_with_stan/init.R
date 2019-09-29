install.packages("rstan")


library(rstan)
d <- read.csv("RStanBook/chap04/input/data-salary.txt")
data <- list(N=nrow(d), X = d$X, Y=d$Y)
fit <- stan(file = "RStanBook/chap04/model/model4-5.stan", data=data, seed = 1234)
save.image(file='ddd.RData')
summary(fit)
g