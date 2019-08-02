z <- 3
z
assign("j", 7)
j
class(j)
is.numeric(j)
is.integer(j)
class(j)
class(4L)
4L
date1 <- as.Date("2012-06-28")
class(date1)
as.numeric(date1)
date2 <- as.POSIXct("2012-06-28 17:42")

1:10
-2:3
5:-7
x <- c(1:10)
y <- c(-5:4)
length(y)
x*y
x/y

x + c(1,2)
x+ c(1,2,3)
x<=5


q <- c("Hocky", "Football", "Baseball", "Curling", "Rugby", "Lacross", "Basketball", "tennis")
nchar(q)
nchar(y)
y
x[c(1,4)]
x[c(1:3)]

z <- c(1, 2, NA, 4, 5, NA)
z
is.na(z)
is.null(z)
z <- c(NULL, 2, 3, NULL, 4)
z

#data frame

x <- 10:1
y < -4:5
q <- c("Hockey", "Football", "Baseball", "Curling", "Rugby", "Lacross", "BascketBall", "Tennis",
       "Clicket", "Soccer")
theDF <- data.frame(x, y, q)

theDF <- data.frame(First=x, Second= y, Sport =q)
theDF
colnames(theDF)
rownames(theDF)
nrow(theDF)
ncol(theDF)
theDF[,3]
theDF[2:4,]
theDF[2,]
theDF[,2:3]
theDF['Sport']
theDF[["Sport"]]


#list

list5 <- list(theDF, 1:10)

list6 <- list(TheDataFrame=theDF, TheVector=1:10)
list6[["TheDataFrame"]]$Sport
list5[["3"]]$sport
list5
list5[[1]]$Sport

#matrix

A <- matrix(1:10, nrow = 5)
B