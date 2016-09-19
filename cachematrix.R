## Put comments here that give an overall description of what your
## functions do

## makeCacheMatrix: This function creates a special "matrix" object that can cache its inverse.

makeCacheMatrix <- function(x = matrix()) {
  
  ##  1. set the matrix
  inv = NULL
  set = function(y) {
    # use `<<-` to assign a value to an object in an environment 
    # different from the current environment. 
    x <<- y
    inv <<- NULL
  }
  
  ## 2. get the matrix
  get = function() x

  ## 3. set the inverse
  setinv = function(inverse) inv <<- inverse 

  ## 4. get the inverse
  getinv = function() inv

  ## used as the input to cacheSolve()
  list(set=set, get=get, setinv=setinv, getinv=getinv)

}


## cacheSolve: This function computes the inverse of the special "matrix" returned by makeCacheMatrix above. 
## If the inverse has already been calculated (and the matrix has not changed), then the cachesolve should 
## retrieve the inverse from the cache.

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
}
