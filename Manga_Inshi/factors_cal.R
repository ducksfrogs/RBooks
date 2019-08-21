gaigan <- c(5, 5, 4, 2, 3, 5, 5, 3, 4, 1, 3, 4, 3, 4, 2)
tennai <- c(5, 4, 4, 3, 3, 4, 5, 1, 1, 2, 2, 3, 2, 3, 2)
weitre <- c(5, 5, 4, 4, 3, 5, 5, 2, 3, 2, 3, 4, 3, 4, 3)
tasteo <- c(4, 2, 4, 3, 3, 3, 4, 5, 3, 2, 1, 4, 4, 5, 5)
kakaku <- c(4, 2, 4, 3, 4, 2, 5, 4, 2, 2, 1, 3, 5, 4, 5)
senseo <- c(2, 2, 4, 3, 1, 3, 5, 4, 3, 2, 1, 4, 5, 5, 4)

mat_anc <- cbind(gaigan, tennai, weitre, tasteo, kakaku, senseo)
mat_anc
mat_anc_scaled <- round(scale(mat_anc), digits = 1)
mat_anc_scaled
vvvvvv<-cor(mat_anc_scaled)
eigen(vvvvvv)
