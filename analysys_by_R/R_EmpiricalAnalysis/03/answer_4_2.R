### answer_4_2.r
### ���4.2�̉𓚗�

data <- read.csv("data_3_2.csv")	# �f�[�^�̓ǂݍ���

# 4.2(1)

rec <- with(data, lm(icecream~income))
plot(data$income,data$icecream)
abline(rec)

# 4.2(2)

summary(with(data, lm(icecream~income+u15)))