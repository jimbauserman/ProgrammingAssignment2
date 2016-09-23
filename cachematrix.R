## These functions take a matrix and cache the inverse,
## then search the environment for a cached inverse of and otherwise calculate the inverse


## Creates a list that sets the values of matrix, gets it from cached values
## and sets and gets its inverse

makeCacheMatrix <- function(x = matrix()) {
		m <- NULL
		set <- function(y) {
				x <<- y
				m <<- NULL
		}
		get <- function() x
		setinv <- function(solve) m <<- solve
		getinv <- function() m
		list(set = set, get = get, setinv = setinv, getinv = getinv)
}


## Checks if matrix has cached inverse value and returns that if so,
## else calculates inverse

cacheSolve <- function(x, ...) {
		m <- x$getinv()
		if(!is.null(m)) {
				message("getting cached data")
				retulibraryrn(m)
		}
		data <- x$get()
		m <- solve(data, ...)
		x$setinv(m)
		m
}
