#' heheheheheheplot
#'
#' @export
heheplot <- function() {
  plot_jpeg(system.file("figures/heheplot.jpg", package="hehe"))
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
