#' Test namespace
#'
#' Test namespace correctness
#'
#' @param DF A DataFrame
#' @param index A list of length equal to the number of columns in the DataFrame
#' where each element is an index for that column.
#'
#' @return A subset of the data
#'
#' @export
#' @importMethodsFrom IRanges '['
#'
#' @examples
#' ## Initial info
#' sessionInfo()
#'
#' ## Load data
#' load("~/Desktop/DF.Rdata")
#' 
#' ## Run function
#' result <- foo(DF)

foo <- function(DF, index = list(1:5, 6:10)) {
    print(sessionInfo())
    res <- mapply(function(x, y) { x[y] }, DF, index)
    print(sessionInfo())
    return(res)
}