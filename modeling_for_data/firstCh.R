d <- read.csv("data/data3a.csv")
d$y
class(d)
class(d$y)
summary(d)
plot(d$x,d$y, pch=c(21, 19)[d$f])
legend("topleft", legend = c("C", "T"), pch = c(21,19))
plot(d$f,d$y)
fit <- glm(y~x, data = d, family = poisson)
fit
summary(fit)
logLik(fit)

plot(d$x, d$y, pch=c(21,19)[d$f])
xx <- seq(min(d$x), max(d$x), length=100)
lines(xx, exp(1.29 + 0.0757*xx), lwd=2)
<<<<<<< HEAD

plot(xx, exp(xx))
=======
fit.f <- glm(y ~f, data = d, family = poisson)
summary(fit.f)
logLik(fit.f)
fit.all <- glm(y ~ x+f, data = d, family = poisson)
logLik(fit.all)
summary(fit.all)
>>>>>>> 71b5c347ee709e36a7a054e28d5eb38da1b8cc4c
