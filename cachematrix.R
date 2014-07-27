## This set of functions calculate and cache the inverse of a square matrix
## In the event the inverse is already calculated, it returns that value

## Cache's the inverse of a square matrix

makeCacheMatrix <- function(x = matrix()) {
  m <- NULL
  set <- function(y) {
    x <<- y
    m <<- NULL 
  }
  get <- function() x
  setinverse <- function(solve) m <<- solve
  getinverse<- function() m
  list(set = set, get = get,
       setinverse = setinverse,
       getinverse = getinverse)
}


##Calculates the inverse of a square matrix, 
#unless the inverse has already been cached then it returns that value

cacheSolve <- function(x, ...) {
  
  {
    m <- x$getinverse()
      if (!is.null(m)){
          message ("getting cached data")
          return(m)
      }
    data<- x$get()
    m <- solve(data, ...)
    x$setinverse(m)
    m
      }  
  
        ## Return a matrix that is the inverse of 'x'
}
