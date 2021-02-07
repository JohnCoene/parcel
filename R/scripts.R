#' Modify Scripts
#' 
#' @importFrom jsonlite read_json write_json
#' 
#' @keywords internal
modify_scripts <- function(){
  json <- read_json("package.json")

  entrypoint <- "index.js"
  dir <- get_output_dir()

  json$scripts$dev <- sprintf("parcel srcjs/%s", entrypoint)
  json$scripts$build <- sprintf("parcel build srcjs/%s -d %s -o index.min.js", entrypoint, dir)

  write_json(
    json, 
    "package.json", 
    auto_unbox = TRUE,
    pretty = TRUE
  )
}