## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  inv <- NULL
  set <<- function(y) {
    x <<- y
    inv <<- NULL
  }
  get <<- function() {
    if (is.null(inv)) inv <- solve(x)
    inv
  }
  list(set = set, get = get)
}

cacheSolve <- function(x, ...) {
  M <- x@get()
  solve(M, ...)
}




## Write a short comment describing this function

