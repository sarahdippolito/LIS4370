A = matrix(c(2,0,1,3), ncol=2)
A
B = matrix(c(5,2,4,-1), ncol=2)
B
A + B
A - B
diag(c(4,1,2,3), 4)
M <- matrix(0, 5,5)
M[1, ] <- c(rep(1, 5))
M[,1] <- c(rep(2,5))
diag(M) <- 3
M

