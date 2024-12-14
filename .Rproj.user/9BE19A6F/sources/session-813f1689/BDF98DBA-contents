#' @export
monash <- function() {
  base_url <- "https://careers.pageuppeople.com"
  url <- "https://careers.pageuppeople.com/513/cw/en/listing/?page-items=200"
  page <- rvest::read_html(url)

  position <- rvest::html_elements(page, "a.job-link")

  position_link <- glue::glue("{base_url}{rvest::html_attr(position, 'href')}")
  position_text <- rvest::html_text2(position)

  position_summary <- rvest::html_elements(page, "tr.summary") |>
    rvest::html_text2()

  position_location <- rvest::html_elements(page, "span.location") |>
    rvest::html_text2()

  position_salary <- rvest::html_elements(page, "tr td:nth-child(3)") |>
    rvest::html_text2()

  position_close <- rvest::html_elements(page, "tr td:nth-child(4)") |>
    rvest::html_text2()

  tibble::tibble(access_date = Sys.Date(),
                 organization = "Monash University",
                 position = position_text,
                 close_date = position_close,
                 url = position_link,
                 summary = position_summary,
                 location = position_location,
                 salary = position_salary) |>
    clean_monash()
}

clean_monash <- function(x) {
  x$close_date <- as.Date(gsub(".* (\\d{1,2} \\w{3} \\d{4}) .*", "\\1", x$close_date),
                          tryFormats = c("%e %b %Y"))

  salary_detail <- regmatches(x$salary, gregexpr("(\\$[0-9,]+)", x$salary)) |>
    purrr::map_df(function(x) {
      if (length(x) == 0) {
        return(tibble::tibble(salary_lower = NA, salary_upper = NA))
      } else {
        if (length(x) == 1) {
          names(x) <- "salary_lower"
        } else {
          names(x) <- c("salary_lower", "salary_upper")
        }
        return(tibble::as_tibble(as.list(x)))
      }
    })

  x <- cbind(x, salary_detail)

  return(x)
}

