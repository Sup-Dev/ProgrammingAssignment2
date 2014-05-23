## Put comments here that give an overall description of what your
## functions do

## A helper function for matrix that caches 
## it's current state and it's inverse.

makeCacheMatrix <- function(x = matrix()) {
    
    ## Initialize the matrix inverse
    inv <- NULL
    
    ## Set method of the matrix
    set <- function(matrix)  {
        mat <<- matrix
        inv <<- NULL
    }

    ## Get method of the matrix
    get <- function() {
        m
    }
    
    ## Set inverse of the matrix
    setInv <- function(matinv) {
        inv <<- matinv
    }
    
    ## Get inverse of the matrix
    getInv <- function() {
        inv
    }
    
    ## Create a list of matrix values of get, set, setInv and getInv
    list(set = set, get = get, setInv = setInv, getInv = getInv)
}


## Reads the cached value for inverse, if it is not 
## avaible then it computes the inverse.

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
    mat <- x$getInv()
    
    ## Returing cached value if it already exists
    if(!is.null(mat)) {
        return(mat)
    }
    
    ## Calculate the inverse and set its value
    mat <- x$get()
    matInv <- solve(mat) %*% mat
    x$setInv(matInv)
    
    ## Return the inverted matrix
    matInv
}
