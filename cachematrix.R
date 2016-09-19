## Put comments here that give an overall description of what your
## functions do

## makeCacheMatrix: This function creates a special "matrix" object that can cache its inverse.
## Thanks to Stackoverload for assistance

makeCacheMatrix <- function(x = matrix()) {
  
  ##  1. set the matrix
  invMat = NULL
  set = function(y) {
    # use `<<-` to assign a value to an object in an environment 
    # different from the current environment. 
    x <<- y
    invMat <<- NULL
  }
  
  ## 2. get the matrix
  getMat = function() x

  ## 3. set the inverse
  setinv = function(inverse) invMat <<- inverse 

  ## 4. get the inverse
  getinv = function() invMat

  ## used as the input to cacheSolve()
  list(set=set, getMat=getMat, setinv=setinv, getinv=getinv)

}


## cacheSolve: This function computes the inverse of the special "matrix" returned by makeCacheMatrix above. 
## If the inverse has already been calculated (and the matrix has not changed), then the cachesolve should 
## retrieve the inverse from the cache.

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  
  invMat = x$getinv()
  
  # if inverse
  if (!is.null(invMat)){
    message("Retrieving cached matrix.")
    return(invMat)
  }
  
  # in not inverse 
  mat.data = x$get()
  invMat = solve(mat.data, ...)
  
  x$setinv(invMat)
  
  return(invMat)
  
}
