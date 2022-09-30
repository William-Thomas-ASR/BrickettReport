#' parse_raw_text
#'
#' @param data raw text from selected page as a 1 column data.frame
#' @param page_number page number of selected text
#'
#' @return a roughly cleaned data.frame due to non standard inputs, it will need to be further processed
#' @export
#'
#' @examples

# TODO Add an example once a PDF has been added to the package underlying data
data <- system.file('extdata',file = '2022-09-24.pdf', package = 'BrickettReport', mustWork = TRUE)
data <- get_pdf_page(pdf = data, page_number = 1)

parse_raw_text <- function(data, page_number) {

  data <- dplyr::tibble("Raw_Text" = data)

  data$Raw_Text <- data$Raw_Text %>%
    stringr::str_replace(pattern = '', replacement = '.')





  }

  return(data)

}
