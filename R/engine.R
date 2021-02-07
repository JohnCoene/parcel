#' Set Engine
#' 
#' Define whether you want to use npm or yarn. 
#' The default engine is `npm`, it can be changed 
#' globally by setting the environment variable
#' `PARCEL_ENGINE` in `.Rprofile`.
#' 
#' @param engine Engine to use, either `npm`, or `yarn`.
#' 
#' @importFrom assertthat assert_that
#' 
#' @name engine
#' @export 
set_engine <- function(engine = c("npm", "yarn")){
  engine <- match.arg(engine)
  Sys.setenv(PARCEL_ENGINE = engine)
}

#' @describeIn engine Retrieve defined engine.
#' @export 
get_engine <- function(){
  engine <- Sys.getenv("PARCEL_ENGINE", "npm")
  check_installed(engine)
  engine
}

#' Check whether a required package is installed
#' @keywords internal
check_installed <- function(pkg = c("npm", "yarn")){
  pkg <- match.arg(pkg)
  
  installed <- requireNamespace(pkg, quietly = TRUE)

  if(!installed){
    msg <- sprintf(
      "Missing `%s`, install it with `remotes::install_github('JohnCoene/%s')`",
      pkg, pkg
    )
    stop(msg, call. = FALSE)
  }

}

#' Initialise
#' @keywords internal
init <- function(){
  engine <- get_engine()
  call <- sprintf("%s::%s_init()", engine, engine)
  eval_call(call)
}

#' Initialise
#' @keywords internal
install_parcel <- function(scope = "dev"){
  engine <- get_engine()
  
  if(engine == "npm")
    npm::npm_install("parcel-bundler", scope = scope)
  else 
    yarn::yarn_add("parcel-bundler", scope = scope)

}
