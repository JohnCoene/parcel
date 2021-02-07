#' Scaffold
#' 
#' Scaffold a project.
#' 
#' @importFrom fs dir_create file_copy
#' @importFrom cli cli_h1 cli_alert_success
#' 
#' @export
scaffold <- function(){

  cli_h1("Scaffolding")

  # initialise
  init()

  # install bundler
  install_parcel()

  # srcjs
  dir_create("srcjs")
  src <- system.file("index.js", package = "parcel")
  file_copy(src, "srcjs/index.js")
  modify_scripts()

  ignore_files()

  cli_alert_success("Parcel project set up")

}
