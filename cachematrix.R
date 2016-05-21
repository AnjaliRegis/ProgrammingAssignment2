## We are creating a set of functions which calculates the inverse of a matrix and stores its value in the global environment
## and retrives the inverse if the same matrix is entered to get the inverse.
## makeCacheMatrix function will calculate and store the inverse of a matrix and then cacheSolve will retrieve it if it is stored already.

## makeCacheMatrix function will calculate and store the inverse of a matrix 

makeCacheMatrix <- function(x = matrix()) {
  
  CM<<-x       ## setting the CM= matrix A
  Cacheinverse<<-solve(CM)  ## Caching the inverse of matrix A/CM
}


## This function does the lexical scoping to see if the inverse of the matrix is already stored, if not then it calculates.

cacheSolve <- function(x=matrix()) {
        ## Return a matrix that is the inverse of 'x'
  secondmatrix<-x ##store the value of second matrix
  Cacheinverse2<-NULL  ## setting the Cacheinverse2 = NULL
  
  
  if ( (identical(CM,secondmatrix)) && (!is.null(Cacheinverse)) ) {  ##if there is previously cached inverse of identical matrix
    
    
    message("getting cached data since the inverse of identical matrix is cached already") ## then retrieve those value
    Cacheinverse
  }
  
  else{                             ##Otherwise calculate fresh
    Cacheinverse2 <-solve(secondmatrix)
    message("Calculating the inverse of matrix since the supplied matrix is different or the value is not cached.")
    Cacheinverse2
  }
  
}

