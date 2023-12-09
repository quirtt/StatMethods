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
" lambda = 0.70 !!"

curve(exp(-0.7)*(0.7)^x/factorial(x), from=-1, to=10, add=T, col='red')

v = c(freqDensTable[1], dpois(0, 0.70), abs(freqDensTable[1] - dpois(0,0.70)))
for (i in 1:4){
    v <- append(v, c(freqDensTable[i+1], dpois(i, 0.70), abs(freqDensTable[i] - dpois(i,0.70))))
}
data = matrix(v,ncol=3, byrow=TRUE)
colnames(data) = c('Measured', 'Estimated', 'Absolute Error')
table = as.table(data)
print(table)

" I fought with this assignment for quite sometime trying to plot 
the poisson distribution with dpois - figured that dpois doesnt accept non 
integer values. had to plot it with the curve function! "

