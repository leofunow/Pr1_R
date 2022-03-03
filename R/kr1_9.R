variant = 22
x <- readLines("coords.txt",19)
dif1 <- diff(as.numeric(x))
dif2 <- diff(dif1)
dif1[length(x)] = NA
dif2[length(x)] = NA
result <- cbind(x,dif1,dif2)
result
write.table(result,"diff_vectors.txt")
