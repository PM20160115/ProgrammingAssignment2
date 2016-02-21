## Put comments here that give an overall description of what your
## Added code for function makeCacheMatrix and cacheSolve
## functions do

## Write a short comment describing this function
## create four function  Get , Set, setSolve, getSolve
## Get - get the matrix
## set - Assign the variable in the enviroenemnt
## setSolve - set the inverse of the matrix
## getSolve - get the inverse of the matrix, if it exists  get it from cache


makeCacheMatrix <- function(x = matrix()) {
    sm <- NULL
    set <- function(y){
        x<<- y
        sm <<- NULL
    }
    get <- function() x
    setSolve <- function(m) sm <<- m
    getSolve <- function() sm
    list( set = set, get = get, setSolve = setSolve, getSolve = getSolve)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
    s <- x$getSolve()
    if(!is.null(s)) {
        message("getting cached data")
        return(s)
    } 
    mat <- x$get()
    s <- solve(x)
    x$setSolve(s)
    s
}
