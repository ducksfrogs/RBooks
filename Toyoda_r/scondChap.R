library(psych)
library(psy)



myfa <- function(X, m=1,...){
  fa(r=X, nfactors = m, fm='ml',rotate = 'promax',...)
}
SRdat <- read.csv("./data/SR2.csv", header = T)
omega.coef <- function(x, nfactors=1, fm='ml',...){
  1 - ( sum(fa(x, nfactors = nfactors, fm=fm,...)$uniquenesses*diag(var(x)))/
              sum(var(x)))
}

myfa(SRdat); cronbach(SRdat); omega.coef(SRdat)

myscree <- function(r, b="data phyc"){
  plot(fa(r)$e.values, type = "o", xlab = b, ylab = "eigen value")
}

myscree(SRdat)
