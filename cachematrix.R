## Calculates inverse of a matrix especially in cases where matrix is too big to be recalculated repeatedly

##set the value of the Matrix
##get the value of the Matrix
##set the value of the inverse Matrix
##get the value of the inverse Matrix


makeCacheMatrix <- function(x = matrix()) {
  makeCacheMatrix <- function(x = matrix()) {
    m<-NULL
    set<-function(y){
      x<<-y
      m<<-NULL
    }
    get<-function() x
    setmatrix<-function(solve) m<<- solve
    getmatrix<-function() m
    list(set=set, get=get,
         setmatrix=setmatrix,
         getmatrix=getmatrix)
  }
  
}

##calcuates the inverse of a matrix created using the above function
cacheSolve <- function(x, ...) {
  ## Return a matrix that is the inverse of 'x'
  cacheSolve <- function(x=matrix(), ...) {
    m<-x$getmatrix()
    if(!is.null(m)){
      message("getting cached data")
      return(m)
    }
    matrix<-x$get
    m<-solve(matrix, ...)
    x$setmatrix(m)
    m
  }
}
