#' Monte Carlo Simulation of Points
#'
#' @description
#' Create a function that will generate some number of randomly selected points
#' within provied bounds
#'
#' @param xbounds num A numeric vector providing the lower and upper bounds for x
#' @param ybounds num A numeric vector providing the lower and upper bounds for y
#' @param n num A number detailing how many points to randomly generate
#'
#' @returns A data frame of randomly generated ordered pairs.
#'
#' @details
#' This function will create a data frame of `n` randomly generated points. The
#' points will have x-coordinates uniformly sampled from `xbounds`, inclusive,
#' while the y-coordinates will be uniformly from `ybounds`.
#'
generatePoints <- function(xbounds, ybounds, n){
  # We will assume that x-/ybounds are in increasing order. We could add
  # a check step if necessary
  randPoints <- data.frame(
    x = runif(n = n, min = xbounds[1], max = xbounds[2]),
    y = runif(n = n, min = ybounds[1], max = ybounds[2])
  )

  return(randPoints)
}
