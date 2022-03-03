variant = 22
x <- read.table("coords.txt")
p <- 4.09
lp <- sum(abs(x)^p)^(1/p)
write(lp,"result.txt")
