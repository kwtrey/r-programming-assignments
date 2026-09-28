# Assignment 4

# 1. Create the matrices
A <- matrix(1:100, nrow = 10)
B <- matrix(1:1000, nrow = 10)

# 2. Inspect dimensions
dim(A)
dim(B)

# 3. Compute inverse and determinant

# For A
invA <- tryCatch(solve(A), error = function(e) e)
detA <- det(A)

# For B, capture errors
invB <- tryCatch(solve(B), error = function(e) e)
detB <- tryCatch(det(B), error = function(e) e)

# Display results
invA
detA
invB
detB
