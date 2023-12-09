set.seed(6940)
Theta = runif(1000,0, 2*pi)
X = 1/cos(Theta)
  

hist(X, n = 1000, prob = T, xlim = c(-50,50))

library(MASS)
fit = fitdistr(X, 'normal')
x = seq(-50, 50, 0.01)
curve(dnorm(x, fit$estimate['mean'], fit$estimate['sd']), col = 'blue', add = T, lwd = 2)
