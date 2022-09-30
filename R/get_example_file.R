#' get_example_file
#'
#' @param file should be null
#'
#' @return path to example file
get_example_file <- function(file = NULL){

  if(is.null(file)){
    dir(system.file('extdata', package = 'BrickettReport'))

  }else{

    system.file('extdata',file, package = 'BrickettReport', mustWork = T)

  }

}


