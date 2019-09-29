d <- read.csv("RStanBook/chap04/input/data-salary.txt")
res_lm <- lm(Y ~ X, data = d)
res_lm

X_new <- data.frame(X = 23:60)
conf_95 <- predict(res_lm, X_new, interval = 'confidence', level=0.95)
pred_95 <- predict(res_lm, X_new, interval = 'prediction', level = 0.95)
plot(conf_95)
conf_95
