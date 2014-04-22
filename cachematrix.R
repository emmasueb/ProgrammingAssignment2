## Put comments here that give an overall description of what your
## functions do
## These functions compute a Matrix Inverse with Caching

## Write a short comment describing this function
## This function sets the value of the matrix, gets the value of the matrix; then sets the value of the inverse matrix and gets the value of the inverse matrix
makeCacheMatrix <- function(x = matrix()) {
    m <– NULL
    set <– function(y)
    x <<– y
    m <<– NULL
    }
    get <– function() x
    setmatrixinverse <- function(mean) m <<– mean
    getmatrixinverse <– function() m
    list(set = set, get = get,
        setmatrixinverse = setmatrixinverse,
        getmatrixinverse = getmatrixinverse)

}
## Write a short comment describing this function
##This function checks to see if the inverse matrix had already been calculated in Cache and if so gets it from this funciton. Otherwise, it calculates the inverse matrix and sets the value of the inverse matrix in the cache
cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        m <– x$getinversematrix()
        if(!is.null(m)) {
            message("getting cached matrix inverse")
            return(m)
        }
        matrix <– x$get
        m <– solve(matrix)
        x$setmatrixinverse(m)
        m
}
