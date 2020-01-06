x = 5:70
x
x = c(3.14, 2.718, 0.577)
x + 10
length(x)
sum(x)
mean(x)
sd(x)
x[1]
x[2:3]
help.start()
height <- c(168.5, 172.8, 159.0)
weight <- c(69.5, 75.0, 56.5)
weight / (height /100)^2
round(weight / (height /100)^2)
round(weight / (height /100)^2, 1)
rep(7,10)
rep(c(1,2), 5)
# 1,2,3,4,5がそれぞれ、２，４，３，２個
x = rep(1:5, c(2,3,4,3,2))
x
table(x)
y = rep(1:5, c(0,2,4,5,3))
table(y)
t.test(x,y)

Shin_tai <- data.frame(height, weight)
Shin_tai
row.names(Shin_tai) <- c("Taro", "Jiro", "Sabro")
Shin_tai
Shin_tai$height
Shin_tai$sex <- c('m','f','f')
Shin_tai
Shin_tai$bmi <- round(Shin_tai$weight/(Shin_tai$height/100)^2)
Shin_tai
write.csv(Shin_tai, "X.csv", quote = FALSE, row.names = F, fileEncoding = 'CP932', eol="\r\n")


x = rnorm(100000)
x
hist(x)
hist(x, col = "gray", main = "ヒストグラムの例")
