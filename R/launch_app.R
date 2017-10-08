#' Run the Shiny App
#'
#' This function runs \code{\link[shiny]{runApp}} with \code{./inst/application} set as the target directory.
#' @param pkg_name The name of the package.
#' @importFrom shiny "runApp"
#' @importFrom stringr "str_c"
#' @export
launch_app <- function(pkg_name) {
 app_dir <- str_c(path.package(pkg_name),"application", sep = "/")
 shiny::runApp(app_dir)
}
