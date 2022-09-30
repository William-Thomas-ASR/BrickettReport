#' get_col_names
#'
#' @param page_number page number of pdf
#'
#' @return column names for given data frame
#'
#'
#' @examples
#' get_col_names(1)

get_col_names <- function(page_number) {
  col_names <- switch(page_number,
    c("Item", "Run_stMary", "ToDate_stMary"),
    c(
      "Run_Cajun", "ToDate_Cajun", "Run_Lasuca", "ToDate_Lasuca",
      "Run_Alma", "ToDate_Alma", "Item_no"
    ),
    c(
      "Run_Enterprise", "ToDate_Enterprise", "Run_Raceland",
      "ToDate_Raceland", "Run_Sterling", "ToDate_Sterling", "Item_No"
    ),
    c(
      "Run_CoraTexas", "ToDate_CoraTexas", "Run_Lafourche",
      "ToDate_Lafourche", "Run_Lula", "ToDate_Lula", "Item_no"
    ),
    c("Run_Westfield", "ToDate_Westfield", "Item_no"),
    c("Item", "Run_Avg", "ToDate_Avg")
  )

  return(col_names)
}
