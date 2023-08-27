"(0.3+0.6)/2 = 9/20 = 0.45. I believe?"

coin1 = sample(c("heads", "tails")=="heads", 10000, replace=TRUE, prob=c(0.3,0.7))
coin2 = sample(c("heads", "tails")=="heads", 10000, replace=TRUE, prob=c(0.6,0.4))
final = numeric(20000)
for(x in 1:20000){
    if(x%%2==1){
        final[x] = coin1[(x+1)/2]
    }
    else{
        final[x] = coin2[x/2]
    }
}
print(final)
finalRelFreq = cumsum(final)/(1:20000)
plot(1:20000, finalRelFreq, type='line', col='red')
lines(1:20000, numeric(20000)+0.45, type='line', col='blue')

"Yup, it works! Although it feels really circular because
sample itself is using those probabilities `somehow`, but I guess
this is good enough for the assignment."