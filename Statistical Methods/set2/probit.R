Table1 = read.table('probit.txt', head=T)
dead = Table1[,3]
prob = dead/100
print(prob)
probit = qnorm(prob)

"This creates the phi-1(prob)"

plot(probit)