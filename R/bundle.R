#' Run Srcipt
#' 
#' Run `package.json` scripts.
#' 
#' @name build
#' @export
parcel_build <- function(){
  engine_run("build")
}

#' @describeIn build Run the `dev` server
#' @export
parcel_dev <- function(){
  engine_run("dev")
}