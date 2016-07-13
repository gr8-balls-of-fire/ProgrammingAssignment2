## Put comments here that give an overall description of what your
## functions do
## Write a short comment describing this function
## The first finction, 
## makeCacheMatrix creates a matrix, 
## which is really a matrix containing a finction to:
## 1. set the value of the matrix
## 2. get the value ofrse  the matrix
## 3. set the value of the inverse matrix
## 4. get the value of the invmatrix

makeCacheMatrix <- function(x = matrix()) {
      inversed <- NULL
      set <- function(y) {
            x <<- y
            inversed <<- NULL
      }
      get <- function() x
      setInverse <- function(inverse) inversed <<- inverse
      getInverse <- function() inversed
      list(set = set,
           get = get,
           setInverse = setInverse,
           getInverse = getInverse)
}


## Write a short comment describing this function
## This function computes the inverse of the special "matrix" created by 
## makeCacheMatrix above. If the inverse has already been calculated (and the 
## matrix has not changed), then it should retrieve the inverse from the cache.

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
}cacheSolve <- function(x, ...) {
      ## Return a matrix that is the inverse of 'x'
      inversed <- x$getInverse()
      if (!is.null(inversed)) {
            message("getting cached data")
            return(inversed)
      }
      mat <- x$get()
      inversed <- solve(mat, ...)
      x$setInverse(inversed)
      inversed
}
