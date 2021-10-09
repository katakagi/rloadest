#' Return value from SQUARE fortran function
#'
#' @useDynLib rloadest SQUARE
#' @export

square <- function(N, A, B) {
  NDIM <- as.integer(1)
  out.data <- .Fortran("SqUARE",
                       N=N,
                       A=A,
                       B = B,
                       C = double(NDIM))
  return(out.data$C)
}

                     
                     