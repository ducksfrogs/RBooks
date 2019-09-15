reil11 <- read.table('data/1syo/rei11.csv', header = T, sep = ',', na.strings = 'NA')

reil1m <- reil11[, -1]
reil1m
gyo <- numeric(6)
for(i in 1:6){
  gyo[i] = 0
  for(j in 1:6){
    gyo[i] = gyo[i] + reil1m[i, j]^2/6
  }
}


#retsu

retu <- numeric(6)
for(j in 1:6){
  retu[j] = 0
  for(i in 1:6){
    retu[j] = retu[j] + reil1m[i,j]^2/6
  }
}

retu
T <- 0
for (i in 1:6){
  for (j in 1:6){
    T = T + reil1m[i,j]^2/36
  }
}

B <- matrix(0, 6, 6)

for (i in 1:6){
  for (j in 1:6){
    if (i == j) B[i,j]= 0 else B[i,j]=(retu[j]+gyo[i]- T - reil1m[i, j]^2)/2
  }
}

B
eigen(B)

w1 = eigen(B)$vectors[,1]
w2 = eigen(B)$vectors[,2]
lam1 = eigen(B)$values[1]
lam2 = eigen(B)$values[2]

X = cbind(w1, w2)
X
D = matrix(c(sqrt(lam1), 0, 0, sqrt(lam2)),2)
D
Y= X%*%D
Y
rownames(Y)= c('Tokyo', 'Ueno', 'Ikebukuro', 'Shinjuku', 'Shibuya', 'Shinagawa')
Y

plot(Y, type = 'n')
text(Y, rownames(Y))
