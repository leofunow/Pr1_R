A <- cbind(c(4,0),c(0,9))
f <- c(4,2)

matrix_operation <- function(A, f){
  rownames(A) <- paste0("eq",1:2)
  colnames(A) <- paste0("x",1:2)
  cat("Собственные значения\n")
  print(eigen(A,only.values = T)[1])
  B <- diag(1,2) - A
  cat("Матрица B\n")
  print(B)
  u <- c(0.2,-0.3)
  u_result <- solve(A, f)
  cat(paste("\nРешение стандартными функциями:",toString(u_result)))
  u1 <- B %*% u + f
  for (i in 2:7) {
    assign(paste0("u",i), B %*% get(paste0("u",i-1)) + f)
  }
    cat(paste("\nРешение итерациями:",toString(get(paste0("u",i)))))
}
cat("Для A\n")
matrix_operation(A,f)

A_new <- A / max(A)
f_new <- f / max(f)
cat("\n\nДля A_new\n")
matrix_operation(A_new, f_new)
A_new
