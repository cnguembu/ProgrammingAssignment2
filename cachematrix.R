## These functions make a special matrix objet can cache the 
##inverse of the matrix rather than compute it repeatedly.

##This first function creates a special matrix objet
getsolve <- function() m
get <- function() x
setsolve <- function(solve) m <<- solve 

m  <- NULL
makeCacheMatrix <- function(x = matrix()) {
  
 set <- function(y) {    x  <<- y  ## set the values of the matrix
                          m  <<- NULL   
  }
 get <- function() x  ## get the values of the matrix
 setsolve <- function(solve) m <<- solve  ##set solve the values of the matrix
 getsolve <- function() m   ## get solve the values of the matrix
 list(set=set, get=get, setsolve=setsolve, getsolve=getsolve)
}

##this function inverse the matrix objet if is not already
##calculate and find the inverse from the cache if is already calculate

cacheSolve <- function(x) {  
  
    m <- getsolve()  ## get the solve matrix
    if(!is.null(m)) {message("getting cached data")
                     return(m)     ## Return a matrix that is the inverse of 'x'
    }
data <- get()
m <- solve(data)
setsolve(m)  ## set the solve matrix
    m
  }

