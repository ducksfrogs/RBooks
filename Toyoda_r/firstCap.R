data1 <- read.csv("data/name_score.csv", header = T, row.names = 1)
cor(data1)
library(psych)
myfa <- function(X, m=1,...){
  fa(r=X, nfactors = m, fm='ml',rotate = 'promax',...)
}
(r_t_fa <-myfa(data1))
r_t_fa$scores

SD_dat <- read.csv("data/Ski.csv", header =T, row.names = 1)
SD_fa <- myfa(SD_dat, 3)
SD_fa

cor(SD_dat)

#factorial score

SD_sc <- SD_fa$scores
colnames(SD_sc) <- c('評価', '活動性', '力量')
round(SD_sc,2)
plot(SD_sc[,'評価'], SD_sc[, '活動性'], type = 'n',
     xlab = '評価', ylab = '活動性')
text(SD_sc[,'評価'],SD_sc[,'活動性'], rownames(SD_sc), cex = 0.8)

myscree <- function(r, b='eigen value'){
  plot(fa(r)$e.values, type='o', xlab = b, ylab = "eigen")
}
myscree(data1)
myscree(SD_dat)
