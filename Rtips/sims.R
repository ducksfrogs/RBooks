mysimulation <- function() {
  count <- 0
  for (i  in 1:10) {
    x <- runif(1)
    if(x <= 1/2) coin <- 1
    else        coin <- 0
    
    if(coin==1) count <- count +1
  }
  return(count)
}

mysimulation()
coin <- function(){
  x <- runif(1)
  if(x <= 1/2) x <-1
  else        x<- 0
  return(x)
}
mycointos <- function(n){
  count <- 0
  for(i in 1:n){
    x <- coin()
    if (x==1) count <- count +1
  }
  return(count)
}
mycointos(1000)

mydicetoss  <- function(n) {
  dice <- c()
  for (i in 1:n){
    x <- runif(1)
    
    if (x <=1/6) dice <- c(dice, 1)
    else if (x <=2/6) dice <- c(dice, 2)
    else if (x <=3/6) dice <- c(dice, 3)
    else if (x <=4/6) dice <- c(dice, 4)
    else if (x <=5/6) dice <- c(dice, 5)
    else  dice <- c(dice, 6)
  }
  return(dice)
}

mydicetoss(7)

y <- mydicetoss(10)
table(y)
y
