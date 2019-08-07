myloop <- function() {
  a <- 0
  for (i in 1:5){
    a <- a +1
  }
  return(a)
}
myloop()
myloop2 <- function() {
  a <- 0
  for (i in 3:7) {
    a <- a +1
  }
  return(a)
}
myloop2()

mysum <- function(n) {
  i <- 0
  for (j in 1:n){
     i <- i + j
  }
  return(i)
}
mysum(7)
