rnorm(10)
rnorm(n=10)
rnorm(n=10, mean = 100, sd=20)
hist(rnorm(n=10, mean = 100, sd=20))
hist(rnorm(n=1000, mean = 100, sd=20))

randNorm10 <- rnorm(10)
dnorm(randNorm)
randNorm <- rnorm(30000)
randDensity <- dnorm(randNorm)
require(ggplot2)
ggplot(data.frame(x = randNorm, y = randDensity)) + aes(x=x, y=y) +
  geom_point() + labs(x="Random Normal Variables", y="Density")
pnorm(randNorm10)
pnorm(c(-3,0,3))
pnorm(-1)
pnorm(0)
pnorm(1) - pnorm(0)

ggplot(data.frame(x = randNorm, y = randDensity)) + aes(x =x, y = y)+
  geom_line() + labs(x = "X", y = "Density")
  
