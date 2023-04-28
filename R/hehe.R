#' hehehe
#'
#' @param x :))
#' @param y :))
#' @return :)))
#' @export
#' @examples
#' 1 + 2


`+` <- function(x,y) {
  r <- runif(1) > 0.1
  maquinas <- runif(1) < 0.05
  complete <- runif(1) < 0.1
  
  if (maquinas) {
    print("Lo primero de todo cómo están los máquinas.")
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
  r <- runif(1) > 0.15
  hehe <- runif(1) < 0.1
  complete <- runif(1) < 0.1
  
  if (hehe) {
    print("🤠")
  }
  
  if (r) {
    if (complete) beepr::beep(3) 
    substract(x,y)
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

setup <- function() {
  if (!require(conflicted)) install.packages("conflicted")
  if (!require(beepr)) install.packages("beepr")
  
  conflicted::conflict_prefer("+", "hehe", "base")
  conflicted::conflict_prefer("-", "hehe", "base")
  conflicted::conflict_prefer("(", "hehe", "base")
  
}



substract <- function(x,y) {
  base::`-`(x,y)
}
