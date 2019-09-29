install.packages("rstan")


library(rstan)
d <- read.csv("first/input/data-salary.txt")
data <- list(N=nrow(d), X = d$X, Y=d$Y)
fit <- stan(file = "RStanBook/chap04/model/model4-5.stan", data=data, seed = 1234)
save.image(file='ddd.RData')
summary(fit)

stanmodel <- stan_model(file = 'first/model4-5.stan')
fit <- sampling(
  stanmodel,
  data= data,
  pars=c('b', 'sigma'),
  init = function(){
    list(a=runif(1, -10, 10), b= runif(1, 0, 10), sigma=10)
  },
  seed = 123,
  chains=3, iter=1000, warmup=200, thin=2
)
fit

ms <- rstan::extract(fit)
ms$b
