#' @export
unsw <- function() {
  base_url <- "https://external-careers.jobs.unsw.edu.au"
  url <- "https://external-careers.jobs.unsw.edu.au/cw/en/listing/?page-items=200"
  page <- rvest::read_html(url)

  position <- rvest::html_elements(page, "a.job-link")

  position_link <- glue::glue("{base_url}{rvest::html_attr(position, 'href')}")
  position_text <- rvest::html_text2(position)

  position_summary <- rvest::html_elements(page, "tr.summary td") |>
    rvest::html_text2()

  position_location <- rvest::html_elements(page, "span.location") |>
    rvest::html_text2()

  position_close <- rvest::html_elements(page, "tr td:nth-child(3)") |>
    rvest::html_text2()

  tibble::tibble(access_date = Sys.Date(),
                 organization = "University of New South Wales",
                 position = position_text,
                 close_date = position_close,
                 url = position_link,
                 summary = position_summary,
                 location = position_location,
                 salary = NA) |>
    clean_unsw()
}

clean_unsw <- function(x) {
  x$close_date <- as.Date(gsub(".* (\\d{1,2} \\w{3} \\d{4}) .*", "\\1", x$close_date),
                          tryFormats = c("%e %b %Y"))

  return(x)
}





