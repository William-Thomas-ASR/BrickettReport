#' get_pdf_page
#'
#' @param pdf path to pdf that contains a text layer
#' @param page_number page number you want text from
#'
#' @return raw text from a page of a pdf file
#' @export
#'
#' @examples
#' a <- system.file('extdata',file = '2022-09-24.pdf', package = 'BrickettReport', mustWork = TRUE)
#' get_pdf_page(pdf = a, page_number = 1)

get_pdf_page <- function(pdf, page_number) {

  page_number <- as.integer(page_number)

  raw_text <- pdftools::pdf_text(pdf = pdf)

  page_text <- raw_text[page_number]

  page_text <- stringr::str_split(string = page_text, pattern =  '\\n')

  page_text <- unlist(page_text)

  page_text <- stringr::str_trim(string = page_text)

  return(page_text)

}

