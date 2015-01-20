## In the function below I'm setting the value of the vector (m), then getting (get)
## the value of the vector, then setting the value of the mean (setmean), then finally getting
## the value of the mean (getmean)

makeCacheMatrix <- function(x=matrix()) {
  m <- NULL
  set <- function(y){
    x <<- y
    m <<- NULL
  }
  get<-function() x
  setmatrix<-function(solve) m <<- solve
  getmatrix<-function() m
  list(set=set, get=get,
       setmatrix=setmatrix,
       getmatrix=getmatrix)
}

## Below I'm checking to see if the the mean of the matrix has already been calculated. 
## If it has been calculated it retrieves the calculation, if not it will run the function as stated above.

cacheSolve <- function(x=matrix(), ...) {
  m <- x$getmatrix()
  if(!is.null(m)){
    message("getting cached data")
    return(m)
  }
  matrix<-x$get()
  m <- solve(matrix, ...)
  x$setmatrix(m)
  m
}
