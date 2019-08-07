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

p <- ggplot(data.frame(x = randNorm, y = randDensity)) + aes(x =x, y = y)+
  geom_line() + labs(x = "X", y = "Density")
  
neg1Seq <- seq(from = min(randNorm), to=-1, by=.1)
lessThanNeg1 <- data.frame(x = neg1Seq, y = dnorm(neg1Seq))
head(lessThanNeg1)
tail(lessThanNeg1)

summary(lessThanNeg1)
lessThanNeg1 <- rbind(c(min(randNorm), 0 ),
                      lessThanNeg1,
                      c(max(lessThanNeg1$x), 0))

p + geom_polygon(data = lessThanNeg1, aes(x = x, y = y))


neg1Pos1Seq <- seq(from = -1, to = 1, by= .1)
neg1To1 <- data.frame(x = neg1Pos1Seq, y = dnorm(neg1Pos1Seq))
head(neg1To1)
neg1To1 <- rbind(c(min(neg1To1$x), 0),
                 neg1To1,
                 c(max(neg1To1$x), 0))

p + geom_polygon(data= neg1To1, aes(x = x, y = y))
