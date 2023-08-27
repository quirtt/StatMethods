library(tuneR)

quiet = readWave('quiet.wav')
nonquiet = readWave('non-quiet.wav')

str(quiet)
str(nonquiet)
hist(nonquiet@left, prob=T, col='yellow')
hist(quiet@left, prob=T, add=TRUE, col='red')

"quiet is an insignificant speck when
kept with non quiet, lol! Both seem normal, 
though."