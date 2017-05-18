##This is my code for Assignment 2 of R Programming with Coursera.org

## The below functions, makeCacheMatrix and cacheSolve calculate
## and cache the inverse of any invertable matrix. When these
## functions are run on a matrix whose inverse has not been calculated
## the inverse will be calculated and cached. If the inverse of a
## matrix has already been calculated using these functions then the
## inverse of the matrix will be returned from the cache without being
## calculated with the message "getting cached data"

## I have intersperced comments throughout for easier understanding of 
## each function, these comments are preceeded by a #

## THe makeCacheMatrix prepares a Matrix for the cacheSolve function
## by created a list of values that will be drawn on to either extract
## the cached inverse of calcuate the inverse if it has not been
## calculated previously

makeCacheMatrix <- function(x = matrix()) {
cache <- NULL                                
        #set the cache to empty
setmatrix <- function(y) {                   
        #set a matrix to be manipulated
  x <<- y
  cache <- NULL                               
        #re-empty the cache
}
getmatrix <- function() x                    
        #returns the matrix
setinverse <- function(solve) cache <<- solve 
        #adds the solve function to the cache
getinverse <- function() cache
        #retrieve the matrix inverse from the cache
list(setmatrix = setmatrix, getmatrix = getmatrix, 
     setinverse = setinverse, getinverse = getinverse)
        #returns of list of the above variables so that they can be
        #stored and used in the next function
}


## This function takes the list returned from makeCacheSolve as x
## and then tests to see if the inverse of the original matrix has
## been calcuated. If it has then the inverse is retrieved from the
## cache with the message "retriving cached data" otherwise the 
## inverse is calculated manually

cacheSolve <- function(x, ...) {
  i <- x$getinverse()
        #set i to the getinverse element from makeCacheMatrix
  if(!is.null(i)){
    message("getting cached data")
    return(i)
        #check to see if there is any cached data, if there is it is returned
  }
data <- x$getmatrix()
        #if getinverse is empty retrieve the original matrix
i <- solve(data, ...)
        #calculate the inverse
x$setinverse(i)
        #cache the inverse so that it may retrieved in future analysis
i 
        # Return a matrix that is the inverse of 'x'
}
