#' Evaluate Call
#' @keywords internal
eval_call <- function(call){
  eval(parse(text = call))
}

#' Get the Project type
#' 
#' Get the project type, helps define the output directory.
#' 
#' @keywords internal
get_project_type <- function(){
  if(is_golem())
    return("golem")
  
  if(is_package())
    return("package")
  
  "project"
}

#' @importFrom fs file_exists dir_exists
is_package <- function(){
  if(file_exists("DESCRIPTION") && dir_exists("R"))
    return(TRUE)
  
  FALSE
}

#' @importFrom fs file_exists dir_exists
is_golem <- function(){
  if(file_exists("DESCRIPTION") && dir_exists("inst/app/www"))
    return(TRUE)
  
  FALSE
}

#' Get Output Path from dir
#' 
#' @param type Project type as returned by [get_project_type()].
#' 
#' @keywords internal
type2output <- function(type){
  switch(
    type,
    golem = "inst/app/www",
    package = "inst",
    project = "dist"
  )
}

#' Get Output dir
#' @keywords internal
get_output_dir <- function(){
  type <- get_project_type()
  type2output(type)
}

#' @importFrom cli cli_alert_info
#' @importFrom usethis use_git_ignore use_build_ignore
ignore_files <- function(){
  cli_alert_info("Adding files to {.file .gitignore}")
  use_git_ignore("node_modules/")
  use_git_ignore(".cache/")

  type <- get_project_type()

  if(type != "project"){
    cli_alert_info("Adding files to {.file .Rbuildignore}")
    use_build_ignore("node_modules/")
    use_build_ignore("package.json")
    use_build_ignore(".cache/")
    use_build_ignore("package-lock.json")
  }
}
