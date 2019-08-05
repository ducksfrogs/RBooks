require(data.table)
theDF <- data.frame(A=1:10,
                    B=letters[1:10],
                    C=LETTERS[1:10],
                    D=rep(c("One", "Two", "Three"), length.out=10))
theDT <- data.table(A=1:10,
                    B=letters[1:10],
                    C=LETTERS[1:10],
                    D=rep(c("One", "Two", "Three"), length.out=10))
theDF
theDT

diamondsDT <- data.table(diamonds)
diamondsDT
theDT[1:2, ]
theDT[theDT$A >=7,]
theDT[, list(A, C)]
theDT[,B]
theDT[,"B", with=FALSE]
tables()
setkey(theDT, D)
theDT
key(theDT)
tables()
theDT["One",]


setkey(diamondsDT, cut, color)
diamondsDT[J("Ideal", "E")]


aggregate(price ~ cut, diamonds, mean)

diamondsDT[, mean(price), by=cut]
diamondsDT[, list(price = mean(price)), by=cut]
diamondsDT[, list(price = mean(price)), by=list(cut, color)]

diamondsDT[, list(price = mean(price), carat= mean(carat)), by=cut]


diamondsDT[, list(price= mean(price), carat = mean(carat)), by=cut]
diamondsDT[, list(price= mean(price), carat=mean(carat), 
                  caratSum = sum(carat)), by=cut]

diamondsDT[, list(price= mean(price), carat=mean(carat)), 
                  by=list(cut, color)]
