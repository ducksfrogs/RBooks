theUrl <- "http://www.jaredlander.com/data/Tomato%20First.csv"
tomato <- read.table(file=theUrl, header = TRUE, sep = ",")
save(tomato, file = "data/tomato.rdata")
require(XML)
library(XML)
install.packages("ggplot2")
library(ggplot2)
data(diamonds)
head(diamonds)
hist(diamonds$carat, main = "Carat Histgram" ,xlab = "Carat")
plot(price ~ carat, data = diamonds)
boxplot(diamonds$carat)

#ggplot2
ggplot(data= diamonds) + geom_histogram(aes(x=carat))

ggplot(data = diamonds) + geom_density(aes(x= carat), fill="grey50")

ggplot(diamonds, aes(x= carat, y=price)) +geom_point()

g <- ggplot(diamonds, aes(x=carat, y= price))
g + geom_point(aes(color= color))

g + geom_point(aes(color= color)) +facet_wrap(~color)
