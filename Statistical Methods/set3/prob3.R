set.seed(6940)
Theta = runif(1000,0, 2*pi)
X = 1/cos(Theta)


hist(X, n = 1000, prob = T, xlim = c(-50,50))
L = unname(quantile(X, 0.05))
U = unname(quantile(X, 0.95))

print(U - L)

sum(X>5)/length(X)