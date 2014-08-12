## The following functions can cache the inverse of a matrix rather than computing
## it repeatedly. This is computationally efficient and can save computing time.

## This function creates a special "matrix" object that can cache its inverse. Its
## output is a list that contains a function to:
## 1. set the value of the matrix
## 2. get the value of the matrix
## 3. set the value of the inverse
## 4. get the value of the inverse

makeCacheMatrix <- function(x = matrix()) {
    i <- NULL
    
    ## 1. set the value of the matrix
    set <- function(y) {
        x <<- y
        i <<- NULL
    }
    
    ## 2. get the value of the matrix
    get <- function() x
    
    ## 3. set the value of the inverse
    setinverse <- function(inverse) i <<- inverse
    
    ## 4. get the value of the inverse
    getinverse <- function() i
    
    list(set = set, get = get,
         setinverse = setinverse,
         getinverse = getinverse)
}


## This function computes the inverse of the special "matrix" returned by 
## makeCacheMatrix function. If the inverse has already been calculated (and 
## the matrix has not changed), then the cacheSolve function retrieves the
## inverse from the cache.

cacheSolve <- function(x, ...) {
    i <- x$getinverse()
    if(!is.null(i)) {
        message("getting cached data")
        return(i)
    }
    
    ## Return a matrix that is the inverse of 'x'
    data <- x$get()
    i <- solve(data)
    
    x$setinverse(i)
    i
}
