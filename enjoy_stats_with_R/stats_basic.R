X = c(0,7,8,9,100)
mean(X)
Y = c(0,7,8,NA, 0/0)
Y
mean(X, trim = 0.2)
median(X)
X = c(1,2,3,4,5)
Y = c(5,3,1,8,9)
mean(2*X + 3*Y)
2*mean(X) + 3*mean(Y)
Y = c(5,3,1,3,5)

runif(1)
runif(100)
hist(runif(100))
X = runif(10000) + runif(10000)
hist(X)
# binormial 

factorial(10)/(factorial(3)*factorial(7))
choose(10,3)
choose(10,3)*0.4^3*0.6^7
dbinom(3, 10, 0.4)
dbinom(0:10, 10, 0.5)
barplot()
barplot(dbinom(0:10, 10, 0.5), names.arg = 0:10, las=1)
