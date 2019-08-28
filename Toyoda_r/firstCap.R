data1 <- read.csv("data/name_score.csv", header = T, row.names = 1)
cor(data1)
library(psych)
myfa <- function(X, m=1,...){
  fa(r=X, nfactors = m, fm='ml',rotate = 'promax',...)
}
(r_t_fa <-myfa(data1))

SD_dat <- read.csv("data/Ski.csv", header =T, row.names = 1)
SD_fa <- myfa(SD_dat, 3)
SD_fa

