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
g + geom_point(aes(color= color)) + facet_grid(cut ~ color)

ggplot(diamonds, aes(x=carat)) + geom_histogram() + facet_wrap(~color)

ggplot(diamonds, aes(y=carat, x=1)) + geom_boxplot()

ggplot(diamonds, aes(y = carat, x=cut)) + geom_boxplot()

ggplot(diamonds, aes(y=carat, x=cut)) +geom_violin()

ggplot(diamonds, aes(y=carat, x = cut)) + geom_point() + geom_violin()

ggplot(diamonds, aes(y=carat, x = cut)) +  geom_violin() +geom_point()


data("economics")
head(economics)
ggplot(economics, aes(x=date, y=pop)) +geom_line()


require(lubridate)
economics$year <- year(economics$date)
economics$month <- month(economics$date, label = TRUE)

econ2000 <- economics[which(economics$year>=2000),]
require(scales)
g <- ggplot(econ2000, aes(x=month, y=pop))
g <- g + geom_line(aes(color=factor(year), group=year))
g
g <- g + scale_color_discrete(name=Year)
g <- g + scale_y_continuous(labels = comma)
g
#g <- g + labs(title = Population Growth, x=Month, y=Population)


require(ggthemes)
install.packages("ggthemes")

g2 <- ggplot(diamonds, aes(x=carat, y=price)) + 
  geom_point(aes(color=color))
g2 + theme_economist() + scale_color_economist()
g2 + theme_excel() + scale_color_excel()
g2 + theme_tufte()
g2 + theme_wsj()
