data("women")
plot(women$height, women$weight)
cor(women$height, women$weight)
lm(women$height~women$weight, data = women)
?abline
