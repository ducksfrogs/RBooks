say.hello <- function(){
  print("Hello, world")
}

say.hello()

sprintf("Hello %s", "Jared")
sprintf("Hello %s, today is %s", "Jared", "Sunday")

hello.person <- function(name){
  print(sprintf("Hello %s", name))
}

hello.person("Masanari")

hello.person <- function(first, last){
  print(sprintf("Hello %s %s", first, last))
}

hello.person("Masanari", "Suzuki")
hello.person(last =  "Suzuki", first = "Masanari")

hello.person <- function(first, last="Jared"){
  print(sprintf("Hello %s %s", first, last))
}

hello.person("masanari")

double.num <- function(x){
  x*2
}

double.num(4)
double.num(6)

double.num <- function(x){
  return(x*2)
}

double.num(4)

run.this <- function(x, func=mean){
 do.call(func, args = list(x)) 
}

run.this(1:10)

run.this(1:10, sum)
run.this(1:10, sd)
a <- c(1:14)
run.this(a, sum)
sum(1:14)
