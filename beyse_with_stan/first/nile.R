library(rstan)
library(ggmcmc)

set.seed(1)

NileData <- list(Nile= as.numeric(Nile), n=length(Nile))
NileData



Nile_Model_1 <- stan( file = 'nile.stan',
  data = NileData,
  iter=1100,
  warmup = 100,
  thin = 1,
  chains = 3
)
