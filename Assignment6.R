#matrix addition and subtraction
A <- matrix(c(2, 0, 1, 3), ncol = 2)
B <- matrix(c(5, 2, 4, -1), ncol = 2)
# A+B
A+B
#A-B
A-B
# create diagonal matrix
D <- diag(c(4, 1, 2, 3))
D
# Custom 5x5 matrix
M <-diag(3,5)
M[1, ] <-c(3,1,1,1,1)
M[2:5,1] <-2
M
