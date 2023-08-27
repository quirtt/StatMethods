#Input
prusHorse = read.csv("prussian_kick.csv", head=T)

#table, freqTable and freqDensTable
death = prusHorse[,3]
freqTable = as.vector(as.matrix(table(death)))
freqTable = append(freqTable, numeric(5))
print(freqTable)
freqDensTable = freqTable/sum(freqTable)
barplot(freqDensTable, col='steelblue')

#fit
library(MASS)
fitdistr(death, "poisson")
# lambda = 0.70

curve(exp(-0.7)*(0.7)^x/factorial(x), from=-1, to=10, add=T, col='red')

" I fought with this assignment for quite sometime trying to plot 
the poisson distribution with dpois - figured that dpois doesnt accept non 
integer values. had to plot it with the curve function! "

