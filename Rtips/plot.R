frame()
plot.new()

x <- 0:10
plot(x , dbinom(x, 10, 0.5), type = "h", lwd=5)
curve(dnorm, -4, 4, type="l")
xvals <- seq(2, 4, length = 10)
dvals <- dnorm(xvals)
polygon(c(xvals, rev(xvals)), c(rep(0,10), rev(dvals)), col="gray")
