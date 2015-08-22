## Set required values

makeCacheMatrix <- function(x = matrix()) {
	mcm<-NULL
	set<-function(y) {
	x<<-y
	mcm<<-NULL
}
	get<-function() x
	setm<-function(solve) mcm<<-solve
	getm<-function() mcm
	list(set=set, get=get,setm=setm,getm=getm)

}


## Check and retrieve if available, otherwise calculate and set

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
	mcm<-x$getm()
	if(!is.null(mcm)) {
	message("Cached Data")
	return(mcm)
}
	matrix<-x$get()
	mcm<-solve(matrix, ...)
	x$setm(mcm)
	mcm

		}
