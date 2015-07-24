##makeCacheMatrix function takes a matrix as an input value and returns an inverse matrix as an output
##This function also stores the matrix and inverse matrix in cache
##Input for this function can be a variable that stored square invertible matrix or a matrix can be passed directly
## Example: p <- matrix(c(1,-.25,-.25,3), nrow = 2, ncol = 2) makeCacheMatrix(p)

makeCacheMatrix <- function(x = matrix()) {
  mat <<-x
  invmat <<- solve(x)
invmat
    
}


## cacheSolve matrix takes matrix as an input and verifies whether inverse was already calculated for it
## If inverse is already calculated, then inverse matrix is retrieved from the cache else it is calculated

cacheSolve <- function(x, ...) {
  if(all(x==mat) )
  {
    print("getting cached data")
    return(invmat)
  }
  else
  {
    return(solve(x))
  }
    
}
