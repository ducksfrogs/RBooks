theMatrix <- matrix(1:9, nrow = 3, ncol = 3)
apply(theMatrix, 1, sum)
apply(theMatrix, 2, sum)
rowSums(theMatrix)
colSums(theMatrix)
theMatrix[2,1] <- NA

apply(theMatrix, 1, sum)
apply(theMatrix, 2, sum)

apply(theMatrix, 1, sum, na.rm=T)
apply(theMatrix, 2, sum, na.rm=T)
rowSums(theMatrix)
rowSums(theMatrix, na.rm = T)

#list

theList <- list(A = matrix(1:9, nrow = 3), B=1:5, C= matrix(1:4, 2))
theList
lapply(theList, sum)
sapply(theList, sum)
theNames <- c("Jared", "Deb", "Paul")
lapply(theNames, nchar)
sa<-sapply(theNames, nchar)
typeof(sa)
sum(sa)
plot(sa)
firstList <- list(A= matrix(1:16, 4), B=matrix(1:16, 2), C=1:5)
secondList <- list(A = matrix(1:16, 4), B= matrix(1:16, 8), C=15:1)
mapply(identical, firstList, secondList)
simpleFunc <- function(x, y){
  NROW(x) + NROW(y)
}

mapply(simpleFunc, firstList, secondList)
15:1

#aggregate

require(ggplot2)
data("diamonds")
head(diamonds)

aggregate(price~cut, diamonds, mean)

aggregate(price ~ cut + color, diamonds, mean)

aggregate(cbind(price, carat) ~ cut, diamonds, mean)

aggregate(cbind(price, carat) ~ cut + color, diamonds, mean)

#plyr

require(plyr)

head(baseball)
data("baseball")
baseball$sf[baseball$year < 1954] <-0
any(is.na(baseball$sf))
baseball$hbp[is.na(baseball$hbp)] <- 0

#above 50 ab

baseball <- baseball[baseball$ab >=50, ]

baseball$OBP <- with(baseball, (h+ bb + hbp)/(ab + bb + hbp + sf))
tail(baseball)


obp <- function(data){
  c(OBP = with(data, sum(h + bb + hbp)/sum(ab + bb + hbp + sf)))
}

carrerOBP <- ddply(baseball, .variables = "id", .fun = obp)
carrerOBP <- carrerOBP[order(carrerOBP$OBP, decreasing=TRUE),]
head(carrerOBP, 10)

#llply

lapply(theList, sum)
llply(theList, sum)

sapply(theList, sum)
laply(theList, sum)

aggregate(price~cut, diamonds, each(mean, median))

dlply(baseball, "id", nrow)
system.time(dlply(baseball, "id", nrow))
iBaseball <- idata.frame(baseball)
system.time(dlply(iBaseball, "id", nrow))

