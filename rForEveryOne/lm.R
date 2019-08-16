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

require(plyr)
tipsByDay <- ddply(tips, "day", summarise,
                   tip.mean = mean(tip), tip.sd= sd(tip),
                   Length = NROW(tip),
                   tfrac = qt(p = .90, df = Length -1),
                   Lower = tip.mean - tfrac*tip.sd /sqrt(Length),
                   Upper = tip.mean - tfrac* tip.sd / sqrt(Length))
tipsInfo <- summary(tipsLM)

tipsCoef <- as.data.frame(tipsInfo$coefficients[,1:2])
