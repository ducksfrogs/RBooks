data1 <- read.csv("data/name_score.csv", header = T, row.names = 1)
corr_data <- cor(data1)
i_eigen <- eigen(corr_data)$values
i_eigen
plot(i_eigen, type='b')
factanal1 <- factanal(x=data1, factors = 1, rotation = "promax")
factanal1
