#' :)
#'
#' @param url :))
#' @return :)))
#' @export
#' @examples
#' hehe("https://noproblo.dayjo.org/ZeldaSounds/ST/ST_Fanfare_NewSong.wav")


hehe <- function(url = "https://s3.eu-west-3.amazonaws.com/blob-eu-west-3-qg5chf/sara/cf/cf23/cf23f68e-d2e5-4657-9786-1b8cea3cf0a3.bin?response-content-disposition=attachment%3B%20filename%3D%22hehe.wav%22&response-content-type=audio%2Fx-wav&X-Amz-Content-Sha256=UNSIGNED-PAYLOAD&X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=AKIA4DM2EY46SOWUMUP4%2F20230427%2Feu-west-3%2Fs3%2Faws4_request&X-Amz-Date=20230427T090727Z&X-Amz-SignedHeaders=host&X-Amz-Expires=1800&X-Amz-Signature=2e986974fd0fbc699836419490d200e10d5cfede954a864525fcfc0876d87dfd"){
  if (!require("sound")) install.packages("sound")
  tmp <- tempfile(fileext = ".wav")
  invisible(download.file(url, tmp, quiet = TRUE))
  invisible(sound::setWavPlayer(sound::findWavPlayer()[1]))
  sound::play(tmp)
}

