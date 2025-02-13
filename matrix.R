#Matrix Operations in R#

#Example
library("RConics")
M <- matrix(c(4,6,1,3,2,5,8,5,9), nrow=3)
M
detM <- det(M)
adjM <- adjoint(M)
M_inverse <- adjM * (1/det(M))
M_inverse
to_check <- M %*% M_inverse
round(to_check)
##Or much easier:
solve(M)

#

#Assignment
A <- matrix(1:100, nrow=10)
t(A)
VA <- c(A)
A <- A * VA
A <- matrix(A, nrow=10, ncol=10)
B <- matrix(1:1000, nrow=10)
t(B)
VB <- c(B)
B <- B * VB
B <- matrix(B, nrow=10, ncol=100)
C <- A %*% B
C
dim(C)
#10 by 100 Matrix

#

#Inverse Matrices Continued 
S <- matrix(2:5, nrow=2)
det(S)
solve(S)
round(S %*% solve(S))
#Good




