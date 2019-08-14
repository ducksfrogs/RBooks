score_men <- c(2, 1, 5, 2, 3, 4, 4, 1, 3, 5)
score_gu <- c(4, 5, 3, 2, 5, 3, 4, 2, 3, 5)
score_soup <- c(5, 1, 4, 3, 5, 2, 3, 1, 2, 3)
tenme <- c("Niraku", "Yume", "Jima", "nanoha", "Hanabushi", "ShouTatu:", "Marukura", "Kairaku",
           "Narumi", "Minato")
length(tenme)
mat_score <- cbind( score_men, score_gu, score_soup)
row.names(mat_score) <- tenme

cor(mat_score)
momo <- prcomp(mat_score)
plot(momo)
eigen(mat_score)
eigen(cor(mat_score))
summary(momo)
momo
