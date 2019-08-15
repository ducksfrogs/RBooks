jap_score <- c(93, 100, 84, 70, 70, 66, 74, 74, 76, 79)
soci_score <- c(100, 98, 84, 73, 72, 68, 70, 75, 77, 88)
sci_score <- c(89, 89, 99, 92, 89, 95, 96, 95, 92, 100)
engl_score <- c(84, 95, 85, 66, 66, 57, 93, 70, 78, 86)
mathm_score <- c(77, 86, 100, 77, 75, 82, 88, 79, 83, 100)
name_score <- c("A", "B", "C", "D", "E", "F", "G", "H", "I", "J")
inshi_mat <- cbind(jap_score, soci_score, sci_score, engl_score, mathm_score)
head(inshi_mat)

row.names(inshi_mat) <- name_score
head(inshi_mat)
w2 <- cor(inshi_mat)
plot(eigen(w2)$values); abline(h=1)
