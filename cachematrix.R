## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
## This function creates de especial matrix 
## m is the matrix that keeps the solved matrix
## with getsolve you can retrieve the solved matrix
## with setsolve you can save the solved matrix into m
## with get you can get the orignal values of the matrix
## with set you can chance de value of x and initialices 
## m with null

makeCacheMatrix <- function(x = matrix()) {
      m <- NULL
      set <- function (y) {
            x <<- y
            m <<- NULL
      }      
      get <- function () x
      setsolve <- function (solve) m <<- solve
      getsolve <- function () m
      list ( set = set, get = get,
             setsolve = setsolve,
             getsolve = getsolve )
}


## Write a short comment describing this function
## This function retrieves the data, solve(x) and
## chaches the solved matrix back into de especial matrix

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
     m<- x$getsolve()
     if (!is.null(m)) {
         message ("getting cached data")
         return (m)
     }
     data <- x$get()
     m<- solve(data, ...)
     x$setsolve(m)
     m
}
