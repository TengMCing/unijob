#' @export
usyd <- function(sleep = 3) {
  base_url <- "https://usyd.wd3.myworkdayjobs.com"
  url <- "https://usyd.wd3.myworkdayjobs.com/USYD_EXTERNAL_CAREER_SITE"

  page <- rvest::read_html_live(url)

  Sys.sleep(sleep)

  position_link <- c()
  position_text <- c()
  position_summary <- c()
  position_location <- c()

  while(TRUE) {

    position <- rvest::html_elements(page, "li.css-1q2dra3")

    for (each_position in position) {
      each_link <- rvest::html_attr(rvest::html_elements(each_position, 'a.css-19uc56f'), "href")
      each_link <- glue::glue("{base_url}{each_link}")
      each_text <- rvest::html_text2(rvest::html_elements(each_position, 'a.css-19uc56f'))
      each_summary <- rvest::html_text2(rvest::html_elements(each_position, "ul.css-14a0imc"))
      each_location <- rvest::html_text2(rvest::html_elements(each_position, 'div[data-automation-id="locations"] dd.css-129m7dg'))

      if (length(each_link) == 0) each_link <- ""
      if (length(each_text) == 0) each_text <- ""
      if (length(each_summary) == 0) each_summary <- ""
      if (length(each_location) == 0) each_location <- ""

      position_link <- c(position_link, each_link)
      position_text <- c(position_text, each_text)
      position_summary <- c(position_summary, each_summary)
      position_location <- c(position_location, each_location)
    }

    if (length(rvest::html_elements(page, 'button[aria-label="next"].css-1oatwy4')) > 0) {
      page$click('button[aria-label="next"].css-1oatwy4')
      Sys.sleep(sleep)
    } else {
      break
    }
  }

  tibble::tibble(access_date = Sys.Date(),
                 organization = "University of Sydney",
                 position = position_text,
                 close_date = NA,
                 url = position_link,
                 summary = position_summary,
                 location = position_location,
                 salary = NA)
}
