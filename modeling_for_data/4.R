sum(log(dpois(d$y, lambda = d$y)))

fit.null <- glm(formula = y~1, family = poisson, data = d)
summary(fit.null)
-2*logLik(fit.null)
