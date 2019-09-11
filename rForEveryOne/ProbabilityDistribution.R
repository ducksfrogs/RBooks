# Normal distoribution

rnorm(n=10)

# mean 100, sd=20
rnorm(n=10, mean = 100, sd=20)

randNorm10 <- rnorm(10)
dnorm(randNorm)
randNorm
dnorm(2)

randNorm <- rnorm(3000)
randDensity <- dnorm(randNorm)

require(ggplot2)
ggplot(data.frame(x=randNorm, y = randDensity)) + 
  aes(x = x, y = y) +
  geom_point() + labs(x = "Random Normal Valiables", y = "Density")

randNorm <- rnorm(10)
randDensity <- dnorm(randNorm)

require(ggplot2)
ggplot(data.frame(x=randNorm, y = randDensity)) + 
  aes(x = x, y = y) +
  geom_point() + labs(x = "Random Normal Valiables", y = "Density")

pnorm(randNorm10)
pnorm(c(-3, 0, 3))


pnorm(-1)

p <- ggplot(data.frame(x = randNorm, y=randDensity)) +
  aes(x = x, y = y) +
  geom_line() + labs(x ="x", y = "Density")
p

neg1Seq <- seq(from=min(randNorm), to= -1, by = .1)

lessThanNeg1 <- data.frame(x = neg1Seq, y = dnorm(neg1Seq))


head(lessThanNeg1)
lessThanNeg1 <- rbind(c(min(randNorm), 0),
                      lessThanNeg1, 
                      c(max(lessThanNeg1$x), 0))
p + geom_polygon(data = lessThanNeg1, aes(x=x, y=y))

neg1Post1Seq <- seq(from= -1, to=1, by= .1)
neg1To1 <- data.frame(x= neg1Post1Seq, y = dnorm(neg1Post1Seq))
head(neg1To1)
neg1To1 <- rbind(c(min(neg1To1$x), 0),
                 neg1To1,
                 c(max(neg1To1$x), 0))
p + geom_polygon(data= neg1To1, aes(x = x, y=y))
