require(ggplot2)
data(tips, package = "reshape2")
head(tips)
unique(tips$sex)
unique(tips$day)
t.test(tips$tip, alternative = "two.sided", mu= 2.5)


randT <- rt(30000,  df=NROW(tips) -1)
tipTest <- t.test(tips$tip, alternative = "two.sided", mu= 2.5)

require(ggplot2)
ggplot((data.frame(x = randT)))+
  geom_density(aes(x = x), fill="grey", color="grey") +
  geom_vline(xintercept = tipTest$statistic) +
  geom_vline(xintercept = mean(randT) +c(-2,2) * sd(randT), linetype =2)

t.test(tips$tip, alternative = "greater", mu= 2.5)

aggregate(tip ~sex, data = tips, var)
shapiro.test(tips$tip)
