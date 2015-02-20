## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) { 
         # sets x equal to an empty matrix 
         I <- NULL 
         # Set the inverse equal to NULL 
         
         set <- function(y){ 
                   x <<- y 
                     # set function assigns the argument to x 
                   I <<- NULL 
                # Once the set function is called, Inverse is re-set to NULL (this is important if you redefine the matrix, x) 
           } 
           get <- function() x 
           # get function returns the matrix 
          
       setInverse <- function(solve) I <<- solve 
          # setInverse overrides the previous value of I and assigns the argument to Inverse (which is supposed to be the inverse of matrix x) 
           
        getInverse <- function() I 
         # getInverse returns the Inverse 
           
           list(set = set, get = get, setInverse = setInverse, getInverse = getInverse) 
           # creates a list of the functions 
           
  } 


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

cacheSolve <- function(x=matrix(), ...) {
  m<-x$getmatrix()
  if(!is.null(m)){
    message("getting cached data")
    return(m)
  }
  matrix<-x$get()
  m<-solve(matrix, ...)
  x$setmatrix(m)
  m
}
  
## Write a short comment describing this function


