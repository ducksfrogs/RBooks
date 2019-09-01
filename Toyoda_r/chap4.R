library(psych)
myfa <- function(X, m=1,...){
  fa(r=X, nfactors = m, fm='ml',rotate = 'promax',...)
}

myscree <- function(r, b='eigen value'){
  plot(fa(r)$e.values, type='o', xlab = b, ylab = "eigen")
}
SDdat <- read.csv('data/Ski.csv', header = T, row.names = 1)
YGdat <- read.csv('data/YG3.csv', header = T, sep = ',')
Holdat <- read.csv('data/Hol.csv', header = T, sep = ',')
BFIdat <- read.csv('data/BFI.csv', header = T, sep = ',')

myscree(SDdat, b= "Skydata")
myscree(YGdat, b= "tinou")
myscree(Holdat, b= "Skydata")
myscree(SDdat, b= "Skydata")
myscree(SDdat, b= "Skydata")
myscree(SDdat, b= "Skydata")

#gatman 

myeigen <- function(X){
  cat("eigen value(Gattman)", '\n')
  eigen(cor(X))$values
}
myeigen(SDdat); myeigen(Holdat); myeigen(YGdat); myeigen(BFIdat)

#AIC BIC

myIC <- function(x, M){
  IC_M <- matrix(0, 2, M)
  for (k in 1:M) {
    IC_M[1,k] <- myfa(x, m=k)$STATISTIC - 2*myfa(x,m=k)$dof
  }
  for (k in 1:M) { 
    IC_M[2,k] <-myfa(x, m=k)$BIC
  }
  rownames(IC_M) <- c("AIC", "BIC")
  return(IC_M)
}

myIC(x=SDdat, M=5)

myRMSEA <- function(x, M){
  RMSEA_M <- numeric(M)
  for (k in 1:M){RMSEA_M[k] <- myfa(x, m=k)$RMSEA[1]}
  return(RMSEA_M)
}
myRMSEA(SDdat, M=5)
