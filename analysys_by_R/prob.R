coin <- c("Head", "Tail")
sample(coin, 100, replace = TRUE)
coin <- c(1,0)
factorial(100)/factorial(50)^2/2^100
z <- sample(coin, 100, replace = TRUE)
sum(z)
S <- 100000
rec <- numeric(S)
for(i in 1:S){
  z <- sample(coin, 100, replace = TRUE)
  rec[i] <- sum(z)
}

hist(rec)
summary(rec)
