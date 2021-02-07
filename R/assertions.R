not_missing <- function(x){
  !missing(x)
}

assertthat::on_failure(not_missing) <- function(call, env){
  sprintf("Missing `%s`", deparse(call$x))
}
