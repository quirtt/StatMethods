
library(ggplot2)
X = runif(1000, min=0, max=2)
xlessthan1 = sum(X<1)
xgreaterthan1 = sum(X>1)

data <- data.frame(
    name=c("0 <= x < 1", "1 <= x < 2"),
    value = c(xlessthan1, xgreaterthan1)
)

ggplot(data, aes(x=name, y=value)) +
    geom_bar(stat="identity")