#' heheheheheheplot
#'
#' Heheplot. This function is deprecated as it doesn't support the clown theme.
#' Use \code{heheplot2} instead.
#'
#' @export
heheplot <- function() {
  warning("This function is deprecated. See '?heheplot'")
}

#' heheplot2
#'
#' @export
heheplot2 <- function() {
  plot_jpeg(system.file("figures/heheplot.jpg", package="hehe"))
  invisible(structure("", class = "heheplot2"))
}

#' Clown theme for heheplot2 object
#'
#' @param plt Plot.
#'
#' @export
#'
#' @examples
#' theme_clown(heheplot2())
theme_clown <- function(plt) {
  if (inherits(plt, "heheplot2")) {
    plot_jpeg(system.file("figures/heheclown.jpg", package="hehe"))
  } else {
    stop("Clown theme only works with heheplot2 objects.", call. = FALSE)
  }
}

#' jpeg plotter
#'
#' @param path Path to the image to plot.
#' @param add If true, initializa an empty plot area.
#'
#' @return Image ready to show in the view pane.
#'
#' @references This function was found in \href{https://stackoverflow.com/questions/5249673/how-should-i-handle-helper-functions-in-an-r-package}{this stackoverflow post}.
#'
#' @noRd
plot_jpeg <- function(path, add = FALSE) {
  jpg <- jpeg::readJPEG(path, native = T) # read the file
  res <- dim(jpg)[2:1] # get the resolution, [x, y]
  if (!add) # initialize an empty plot area if add==FALSE
    plot(1,1,xlim=c(1,res[1]),ylim=c(1,res[2]),asp=1,type='n',xaxs='i',yaxs='i',xaxt='n',yaxt='n',xlab='',ylab='',bty='n')
  graphics::rasterImage(jpg,1,1,res[1],res[2])
}
