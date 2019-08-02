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
