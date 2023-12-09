mu1 = 10
mu2 = 20
pair <- function(mu){
    v = rnorm(101, mu, 1)
    Mn = mean(v)
    Md = median(v)
    returnV = c(Mn, Md)
}

means1 = c()
medians1 = c()
means2 = c()
medians2 = c()

for(i in 1:10000){
    X = pair(mu1)
    Y = pair(mu2)
    means1 = append(means1, X[1])
    medians1 = append(medians1, X[2])
    means2 = append(means2, Y[1])
    medians2 = append(medians2, Y[2])
    
}
print(c("Standard error of Means:"))
print(c(sd(means1), sd(means2)))
print(c("Standard error of Medians:"))
print(c(sd(medians1), sd(medians2)))
