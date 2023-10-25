#' makinas
#' @export
makinas <- function() {
  fname <- if (stats::runif(1) < 0.2) "hehe.wav" else "makinas.wav"
  sound_path <- system.file(paste("sounds/", fname, sep=""), package="hehe")
  wav <- audio::load.wave(sound_path)
  audio::play(wav)
}

