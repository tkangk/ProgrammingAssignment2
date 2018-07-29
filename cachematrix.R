## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
## 1. set the value of a matrix
## 2. get the value of a matrix
## 3. set the matrix's inverse
## 4. get the matrix's inverse

makeCacheMatrix <- function(x = matrix()) {
 m<-NULL
 
 set<-function(y){
   x<<-y
   m<<-NULL
 }
  
 get<-function()x
 setinv<-function(solve)m<<-solve
 getinv<-function()m
 
 list(set=set, 
      get=get,
      setinv=setinv,
      getinv=getinv)
}


## Write a short comment describing this function
## cache the inverse of a matrix. 
## First to test whether the inverse has been calculated.
## If not, we will use functions in makeCacheMatrix to get
## the value of a matrix and calculate its inverse. 

cacheSolve <- function(x, ...) {
  ## Return a matrix that is the inverse of 'x'
  
  m<-x$getinv()
  if(!is.null(m)){
    message("getting cached data")
    return(m)
  } # test whether the inverse has been calculated.
  
  # is not, get the value of a matrix
  data<-x$get() 
  m<-solve(data, ...) 
  x$setinv(m)
  m
}
