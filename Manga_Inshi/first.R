japanese_score <- c(92, 97, 100, 89, 95, 99, 97, 93, 89,98)
social_score <- c(83, 82, 100, 77, 79, 96, 87, 77, 75, 93)
science_score <- c(77, 68, 93, 100, 75, 84, 98, 73, 72,70)
eng_score <- c(156, 114, 176, 158, 140, 174, 190, 132, 132, 186)
math_score <- c(38, 33, 44, 46, 37, 42, 49, 35, 35, 37)
scores <- cbind(japanese_score, social_score, science_score, eng_score, math_score)
cor(scores)
eigen(scores)
mat_score <- matrix(scores, 5,5)
eigen(mat_score)

#matrix

testMat <- matrix(c(1, .7, .8, .7, 1, .9, .8, .9, 1), nrow = 3, ncol = 3)
eigen(testMat)
