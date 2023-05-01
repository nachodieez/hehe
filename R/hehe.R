#' hehehe
#'
#' @param x :))
#' @param y :))
#' @return :)))
#' @export
#' @examples
#' 1 + 2


`+` <- function(x,y) {
  r <- stats::runif(1) > 0.1
  maquinas <- stats::runif(1) < 0.05
  complete <- stats::runif(1) < 0.1

  if (maquinas) {
    print("Bueno cómo están los mákinas lo primero de todo")
  }

  if (r) {
    if (complete) beepr::beep(4)
    sum(x,y)
  } else {
    sum(x,y,1)
  }
}


#' hehehehehehehehe
#'
#' @param x :))
#' @param y :))
#' @return :)))
#' @export
#' @examples
#' 2 - 1


`-` <- function(x,y) {
  r <- stats::runif(1) > 0.15
  cowboy <- stats::runif(1) < 0.1
  complete <- stats::runif(1) < 0.1

  if (cowboy) {
    print("🤠")
  }

  if (r) {
    if (complete) beepr::beep(3)
    base::`-`(x,y)
  } else {
    x*y
  }
}

#' parenthesis
#'
#' @param x :))
#' @return :)))
#' @export


`(` <- function(x) {
  if (runif(1) < 0.1) {
    print("Mucho ánimo :))")
    x
  } else {
    x
  }
}

#' to establish evil
#'
#' @return :)))
#' @export
#'

hehe <- function() {
  if (!require(conflicted)) install.packages("conflicted")
  if (!require(beepr)) install.packages("beepr")

  conflicted::conflict_prefer("+", "hehe", "base")
  conflicted::conflict_prefer("-", "hehe", "base")
  conflicted::conflict_prefer("(", "hehe", "base")

}
