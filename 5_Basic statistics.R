
# basic stat

summary(x)    # Summary statistics

quantiles(x)      #Sample quantiles of a vectorx
quantile(x,.95)   # upper quantile
quantile(x,.25)   # lower quantile
max(x) 
min(x)

sum(x)
mean(x)
sd(x)     #Sample standard deviation of a vectorx
var(x)    #Sample variance of a vectorx

round(x/length("col1"), digits = 3) # Gives proportions


# Arithmetics and Operations 
#vectors
x + y  
x * y
x ^ y  # element-wise exponential
3 ^ x  # rais 3 to the power of each element in x 
x ^ 3  # rais each element in x to the power of 3 
3 + x 
3 * x 
x < 1     # asking if vector x is less than 1 (return  vector of TRUE FALES)

# NOTE: two vectors should be the same length otherwise it will be a mess! (might return warning)


#matrix
A %*% X       # multiplication 
t(A)          # transpose
det(A)        # determinant    (determinant(A) returns a list)
solve(A)      # inverse        (check if A is square, it has to be)

diag(x)       # a matrix with elements x along the diagonal.
diag(A)       # a vector of the diagonal elements of A. 



dim(A)        # matrix dimenstion 

# NOTE: check dimenstion before performing operations on two matrecies



# Random Tasks :
-------------------------------------------
# 1- Find the slop   

# compute x and y deviations 
dev_x <- x - mean(x)
dev_y <- y - mean(y)

# sum of squares of xy and xx
Sxx <- sum(dev_x * dev_x)
Sxy <- sum(dev_x * dev_y)

# slope 
Sxy/Sxx

---------------------------------------------
# 2- Solve a the linear system of the form  Ax = b    

A <- matrix(c(3,1,1,-2,1/2,1,1,-12,3), nrow = 3)  # Define matrix A
b <- c(-1, 2, 3)                                  # Define vector b
solve(A, b) 

A %*% x   # to check if answer is correct  

---------------------------------------------
  
  
