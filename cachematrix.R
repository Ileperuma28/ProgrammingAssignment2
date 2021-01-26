## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
## I simply set the input a as a matrix
## and then set the solved value "answer" as a null
## then I changed every reference to "mean" to "solve"

makeCacheMatrix <- function(a = matrix()) {
  
  answer <- NULL
  set <- function(b) {
    a <<- b
    answer <<- NULL
  }
  get <- function() a
  setanswer <- function(inverse) answer <<- inverse
  getanswer <- function() answer
  list(set = set, get = get, setanswer = setanswer, getanswer = getanswer)
  
}




## Write a short comment describing this function

cacheSolve <- function(a, ...) {
        ## Return a matrix that is the inverse of 'a'
  
  answer <- a$getanswer()
  if(!is.null(answer)) {
    message("getting cached result")
    return(answer)
  }
  data <- a$get()
  answer <- solve(data, ...)
  a$setanswer(answer)
  answer
}
