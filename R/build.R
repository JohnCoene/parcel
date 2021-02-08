#' Run Srcipt
#' 
#' Run `package.json` scripts.
#' 
#' @name build
#' @export
build <- function(){
  engine_run("build")
}

#' @describeIn build Run the `dev` server
#' @export
dev <- function(){
  engine_run("dev")
}