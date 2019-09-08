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

plot(xx, exp(xx))
