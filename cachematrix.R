## This functions computes the inverse of the special "matrix".
## If the inverse has already been calculated (and the matrix has not changed), 
## then the function should retrieve the inverse from the cache.

## This function creates a special "matrix" object that can cache its inverse

makeCacheMatrix <- function(x = matrix()) {
    s <- NULL
    set <- function(y){
        x <<- y
        m <<- NULL
    }
    get <- function() x
    setsolve <- function(solve) s<<- solve
    getsolve <- function() {
        
    }
    list(
        set = set,
        get = get,
        setsolve = setsolve,
        getsolve = getsolve
    )
}


## This function computes the inverse of the special "matrix" returned by makeCacheMatrix

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
    s <- x$getsolve()
    if(!is.null(s)) {
        message("getting cached data")
        return(s)
    }
    data <- x$get()
    s <- solve(data, ...)
    x$setsolve(s)
    s
}





