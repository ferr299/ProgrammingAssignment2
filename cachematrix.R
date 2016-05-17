## Put comments here that give an overall description of what your
## functions do
## the first function calculate inverese of a matrix and keep in cache until it be retrieved
## the second function compute inverse of a matrix, but check if it was computed before


## Write a short comment describing this function

## compute the inverse function of a matrix and store de value on var of different enviroment 


makeCacheMatrix <- function(x = matrix()) {

        inv = NULL
        set = function(y) {
                # use `<<-` to assign a value to an object in an environment 
                # different from the current environment. 
                x <<- y
                inv <<- NULL
        }
        get = function() x
        setinv = function(inverse) inv <<- inverse 
        getinv = function() inv
        list(set=set, get=get, setinv=setinv, getinv=getinv)

}

## Write a short comment describing this function
##check if the value of inv is null (if the inverse of matrix was already computed) and if not , then computed it



cacheSolve <- function(x, ...) {
       
		
		inv = x$getinv()
        
       
        if (!is.null(inv)){
               
                message("getting cached data")
                return(inv)
        }
        
        #  compute the inverse 
        mat.data = x$get()
        inv = solve(mat.data, ...)
        
        x$setinv(inv)
        
        inv
		
}
