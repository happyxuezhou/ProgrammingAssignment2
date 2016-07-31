## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
 return_matrix <- NULL
    set <- function(matrix_store)
    {
        input_matrix <<- matrix_store 
        return_matrix <<- NULL            
    }
    get <- function() input_matrix
    set_inverse <- function(solve) return_matrix <<- solve
    get_inverse <- function() return_matrix
    list(set = set, get = get, 
         set_inverse = set_inverse, 
         get_inverse = get_inverse)
}


## Write a short comment describing this function

cache_solve <- function(matrix_to_check, ...)
{
    matrix_store <- matrix_to_check$get_inverse()
    if(!is.null(matrix_store))
    {
        message("Getting Cached Matrix")
        return(matrix_store)
    }
    data <- matrix_to_check$get()
    matrix_store <- solve(data, ...)
    matrix_to_check$set_inverse(matrix_store)
    matrix_store
}

