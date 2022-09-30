#' get_pdf_page
#'
#' @param pdf path to pdf that contains a text layer
#' @param page_num page number you want text from
#'
#' @return raw text from a page of a pdf file
#' @export
#'
#' @examples
#'

# TODO write examples once data has been added to package

get_pdf_page <- function(pdf, page_num) {

  page_num <- as.integer(page_num)

  raw_text <- pdftools::pdf_text(pdf = pdf)

  page_text <- raw_text[page_num]

  page_text <- stringr::str_split(string = page_text, pattern =  '\\n')

  page_text <- unlist(page_text)

  page_text <- stringr::str_trim(string = page_text)

  return(page_text)

}

