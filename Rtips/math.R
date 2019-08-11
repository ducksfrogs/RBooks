f <- expression(a*x^4)
D(f, "x")

DD <- function(expr, name, order=1){
  if(order <1) stop("'order' must be >=1")
  if(order ==1 ) D(expr, name)
  else DD(D(expr, name), name, order-1)
}
DD(f, 'x', 3)

f <- deriv(~ x^2,"x" func=T)
f(-2)

f <- function(x) x^2
integrate(f, 0,1)
integrate(sin, 0, pi)

matrix(1:6, , nrow = 2, ncol = 3)
matrix(1:6, , nrow = 2, ncol = 3, byrow = T)
(x <- matrix(1:6, nrow = 2, ncol = 3))
x[1,2]
x[c(1,2), 2]
x
x[2,]
x[1,]

(x <- rbind(c(1, 2, 3), c(4, 5, 6)))
(x <- cbind(c(1, 2, 3), c(4, 5, 6)))
(x <- rbind(1:3, c(4, 5, 6), 7:9))
a<- matrix(1:4, nrow = 2, ncol = 2)  
b <- matrix(0:3, 2,2)
b
a*(1:2)

