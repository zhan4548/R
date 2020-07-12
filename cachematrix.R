## Put comments here that give an overall description of what your
## functions do

## This catches inverse of an matrix 

makeCacheMatrix <- function(x = matrix()) {
  a <- NULL
  set <- functin(y){
    x <<- y
    a <<- NULL
  }
  get <- function()x
  setInverse <- function(inverse) a <<- inverse
  getInverse <- function() a
  list(set = set, get = get, setInverse = setInverse, getInverse = getInverse)
}


## Return the inverse of x

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  j <- x$getInverse()
  if(!is.null(j)){
    message("getting catched data")
    return(j)
  }
  mat <- x$get()
  j <- solve(mat, ...)
  x$setInverse(j)
  j
}
