
#' get_pdf_page
#'
#' @param pdf Path to PDF containing Brickett Report
#' @param page_num Page Number to pull text from
#'
#' @return
#' @export
#'
#' @examples
get_pdf_page <- function(pdf, page_num) {

  page_num <- as.integer(page_num)

  raw_text <- pdftools::pdf_text(pdf = pdf)

  page_text <- raw_text[page_num]

  page_text <- stringr::str_split(string = page_text, pattern =  '\\n')

  page_text <- unlist(page_text)

  page_text <- stringr::str_trim(string = page_text)

  return(page_text)

}
