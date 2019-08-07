x <- sample(x=1:100, size = 100, replace = T)
mean(x)
y <- x
y[sample(x=1:100, size=20, replace = FALSE)] <-NA
sum(is.na(y))
sample(x=1:100, size = 20)

grades <- c(95, 72, 87, 66)
weights <- c(1/2, 1/4, 1/8, 1/8)
mean(grades)
weighted.mean(x= grades, w = weights)
var(x)
min(x)
min(y)
min(y, na.rm = T)
summary(x)
summary(y)
quantile(x, probs = c(0.25, 0.75))
quantile(x, probs = c(0.1, 0.25, 0.5, 0.75, 0.99))

require(ggplot2)
head(economics)
cor(economics$pce, economics$psavert)
xPart <- economics$pce - mean(economics$pce)
yPart <- economics$psavert - mean(economics$psavert)
nMinusOne <- (nrow(economics)-1)
xSD <- sd(economics$pce)
ySD <- sd(economics$psavert)
sum(xPart * yPart)/ (nMinusOne * xSD * ySD)

head(economics)
cor(economics[, c(2,4:6)])
install.packages("GGally")
require(GGally)
GGally::ggpairs(economics, economics[,c(2,4:6)], parm= list(labelSize= 8))

require(reshape2)
require(scales)
econCor <- cor(economics[, c(2,4:6)])
econMelt <- melt(econCor, varnames = c("x", "y"),
                 value.name = "Correlation")
econMelt <- econMelt[order(econMelt$Correlation), ]
econMelt

ggplot(econMelt, aes(x=x, y=y)) +
  geom_tile(aes(fill=Correlation)) +
  
  scale_fill_gradient2(low=muted("red"), mid="white", 
                       high = "steelblue",
                       guide = guide_colorbar(ticks = FALSE, barheight = 10),
                       limits = c(-1, 1)) + 
  theme_minimal() +
  labs(x=NULL, y = NULL)


m <- c(9, 9, NA, 3, NA, 5, 8, 1, 10, 4)
n <- c(2, NA, 1, 6, 6, 4, 1, 1, 6, 7)
p <- c(8, 4, 3, 9, 10, NA, 3, NA, 9, 9)
q <- c(10, 10, 7, 8, 4, 2, 8, 5, 5, 2)
r <- c(1, 9, 7, 6, 5, 6, 2, 7, 9, 10)

theMat <- cbind(m, n, p, q, r)
cor(theMat, use="everything")
cor(theMat, use="all.obs")
cor(theMat, use = "complete.obs")
cor(theMat, use = "na.or.complete")

require(ggpairs)
install.packages("ggpairs")
data(tips, package = "reshape2")
head(tips)
GGally::ggpairs(tips)

require(RXKCD)
install.packages("RXKCD")

getXKCD(which= "552")
data(economics)
require(ggplot2)
data("economics")
cov(economics$pce, economics$psavert)
cov(economics[,c(2, 4:6)])
head(economics)
cor(economics[, c(2, 4:6)])
identical(cov(economics$pce, economics$psavert),
          cor(economics$pce, economics$psavert) * sd(economics$pce)* sd(economics$psavert))
