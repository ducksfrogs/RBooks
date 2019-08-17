require(UsingR)
require(ggplot2)
head(father.son)
ggplot(father.son, aes(x = fheight, y = sheight)) + geom_point() +
  geom_smooth(method = "lm") + labs(x ="Father height", y = "sons")
heightsLM <- lm(sheight ~ fheight , data = father.son)
summary(heightsLM)

#tips

data(tips, package = "reshape2")
head(tips)
tipsAnova <- aov(tip ~ day -1, data = tips)
tipsLM <- lm(tip ~ day -1, data = tips)
summary(tipsAnova)
summary(tipsLM)
require(plyr)
tipsByDay <- ddply(tips, "day", summarise,
                   tip.mean = mean(tip), tip.sd= sd(tip),
                   Length = NROW(tip),
                   tfrac = qt(p = .90, df = Length -1),
                   Lower = tip.mean - tfrac*tip.sd /sqrt(Length),
                   Upper = tip.mean - tfrac* tip.sd / sqrt(Length))
tipsInfo <- summary(tipsLM)

tipsCoef <- as.data.frame(tipsInfo$coefficients[,1:2])
tipsCoef <- within(tipsCoef, {
                  Lower <- Estimate - qt(p = 0.90, df=tipsInfo$df[2]) * 'Std. Error'
                  Upper <- Estimate + qt(p = 0.90, df = tipsInfo$df[2]) * 'Std. Error'
                  day <- rownames(tipsCoef)
})

#　重回帰

housing <- read.table("http://www.jaredlander.com/data/housing.csv",
                      sep = ',', header = T,
                      stringsAsFactors = F)
head(housing)
names(housing) <- c("Neiborhood", "Class", "Units", "YearBuilt", "SqFt", "Income", "IncomperSqrt",
                    "Expence", "ExpencePerSqFt", "NetIncome", "Value", "ValueperSqFt", "Boro")
head(housing)

ggplot(housing, aes(x= ValueperSqFt)) +
  geom_histogram(binwidht =10) + labs(x="Value per Square Foot")

ggplot(housing, aes(x = ValueperSqFt, fill= Boro)) +
  geom_histogram(binwidth = 10) + labs(x="Value per Square Foot")

ggplot(housing, aes(x = ValueperSqFt, fill= Boro)) +
  geom_histogram(binwidth = 10) + labs(x="Value per Square Foot") +
  facet_wrap(~Boro)


ggplot(housing, aes(x=SqFt)) + geom_histogram()
ggplot(housing, aes(x = Units)) + geom_histogram()
ggplot(housing[housing$Units < 1000 ,], 
       aes(x=SqFt)) + geom_histogram()
ggplot(housing[housing$Units < 1000, ],
       aes(x = Units)) +geom_histogram()
