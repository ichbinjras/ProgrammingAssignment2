## The following functions can cache the inverse of a matrix rather than computing
## it repeatedly. This is computationally efficient and can save computing time.

## This function creates a special "matrix" object that can cache its inverse. Its
## output is a list that contains a function to:
## 1. set the value of the matrix
## 2. get the value of the matrix
## 3. set the value of the inverse
## 4. get the value of the inverse

makeCacheMatrix <- function(x = matrix()) {
    
}


## This function computes the inverse of the special "matrix" returned by 
## makeCacheMatrix function. If the inverse has already been calculated (and 
## the matrix has not changed), then the cacheSolve function retrieves the
## inverse from the cache.

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
}
