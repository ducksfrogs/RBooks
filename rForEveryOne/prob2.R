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
