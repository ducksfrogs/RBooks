# sample script 2_3
# ���֌W���Ƒ吔�̖@��

pop2 <- read.csv("data_2_1.csv")
cr <- numeric(10000)
for(i in 1:10000){ cr[i] <- with(pop2,cor(income[1:i], cons[1:i]))}
plot(cr, type='l', xlab="�W�{��", ylab="���֌W��", main="�吔�̖@��:���֌W��")