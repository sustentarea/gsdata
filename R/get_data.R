#' Get validated datasets from the Sustentarea's Global Syndemic Project
#'
#' @description
#'
#' `r lifecycle::badge("experimental")`
#'
#' `get_data()` retrieves validated datasets from the Sustentarea's Global
#' Syndemic Project.
#'
#' Click [here](https://sustentarea.github.io/gsdata/reference/index.html)
#' or use `data(package = "gsdata")` to see all datasets available.
#'
#' @param data A [`character`][base::as.character] string with the name of the
#'  dataset to be retrieved.
#'
#' @return A [`tibble`][dplyr::tibble] with the requested dataset.
#'
#' @family utility functions
#' @export
#'
#' @examples
#' if (interactive()) {
#'   get_data("gini")
#' }
get_data <- function(data) {
  assert_data(data)

  url <- do.call(
    what = paste0("get_", data, "_url"),
    args = list(type = "valid")
  )

  readr::read_rds(url)
}

#' Get the raw files of datasets from the Sustentarea's Global Syndemic Project
#'
#' @description
#'
#' `r lifecycle::badge("experimental")`
#'
#' `get_raw_data()` downloads the raw datasets from the Sustentarea's Global
#' Syndemic Project.
#'
#' Click [here](https://sustentarea.github.io/gsdata/reference/index.html)
#' or use `data(package = "gsdata")` to see all datasets available.
#'
#' @param data A [`character`][base::as.character] string with the name of the
#'  dataset to be retrieved.
#' @param dir A [`character`][base::as.character] string with the directory
#'  where the raw data file will be saved.
#'
#' @return A [`character`][base::as.character] string with the file path of
#'   the raw data.
#'
#' @family utility functions
#' @export
#'
#' @examples
#' if (interactive()) {
#'   get_raw_data("gini", tempdir())
#' }
get_raw_data <- function(data, dir) {
  assert_data(data)
  checkmate::assert_string(dir)
  checkmate::assert_directory_exists(dir, access = "w")

  url <- do.call(
    what = paste0("get_", data, "_url"),
    args = list(type = "raw")
  )

  file <- file.path(dir, paste0(data, ".", tools::file_ext(url)))

  curl::curl_download(url = url, destfile = file)

  file
}

get_gini_url <- function(type = "valid") {
  checkmate::assert_choice(type, c("raw", "valid"))

  if (type == "valid") {
    paste0(
      "https://github.com/sustentarea/gs-data-analysis-report-3/",
      "raw/refs/heads/main/data/",
      "ibge_gini_index.rds"
    )
  } else {
    "http://tabnet.datasus.gov.br/cgi/ibge/censo/bases/ginibr.csv"
  }
}
