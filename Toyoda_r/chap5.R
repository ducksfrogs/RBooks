ski <- matrix(scan("data/ski.dat"), nrow = 9, byrow = TRUE)
R <- cor(ski)
p <- ncol(ski); m <-3
A.Old <- matrix(rep(0.5, p*m), nrow = p, ncol = m)
A.Old[1, 2:3] <- 0
A.Old[2, 3] <- 0
D2.Old <- diag(R - A.Old %*% t(A.Old)); D2.Old <- diag(D2.Old)
I.m <- diag(1,m)


max.iter <- 1000
iter <- 1
tol <- 10^(-4)
S.zz <- R
while (iter < max.iter) {
  Sigma <- A.Old %*% t(A.Old) + D2.Old
  delta <- t(A.Old) %*% solve(Sigma)
  S.zf.star <- S.zz %*% t(delta)
  S.ff.star <- delta %*% S.zz %*% t(delta) + (I.m - delta %*% A.Old)
  A.New <- S.zf.star %*% solve(S.ff.star)
  D2.New <- diag(S.zz - S.zf.star %*% solve(S.ff.star) %*% t(S.zf.star))
  
  diff <- max(abs(A.New - A.Old), abs(D2.New -diag(D2.Old)))
  if(diff < tol) break;
  A.Old <- A.New
  D2.Old <- diag(D2.New)
  iter <- iter +1
  
}
