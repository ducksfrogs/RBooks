install.packages("UsingR")
require(ggplot2)
require(UsingR)
head(father.son)
length(father.son)
str(father.son)
ggplot(father.son, aes(x = fheight, y=sheight)) +geom_point() +
  geom_smooth(method = "lm") + labs(x="Fathers", y="sons")

heightsLM <- lm(sheight ~ fheight, data = father.son)
heightsLM
