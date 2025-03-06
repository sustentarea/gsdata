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
#' @param force (Optional) A [`logical`][base::as.logical] flag indicating if
#'   the raw data file should be downloaded even if it already exists. If
#'   `TRUE`, the file will be downloaded again (Default: `FALSE`).
#'
#' @return A [`tibble`][dplyr::tibble] with the requested dataset.
#'
#' @family utility functions
#' @export
#'
#' @examples
#' if (interactive()) {
#'   get_data("gini_index")
#' }
get_data <- function(data, force = FALSE) {
  assert_data(data)
  checkmate::assert_flag(force)

  # R CMD Check variable bindings fix (See: https://bit.ly/3z24hbU)
  # nolint start: object_usage_linter
  . <- NULL
  # nolint end

  osf_tbl <- do.call(
    what = paste0("get_", data, "_osf_tbl"),
    args = list(type = "valid")
  )

  file <-
    osf_tbl |>
    magrittr::extract2("name") |>
    magrittr::extract(1) %>%
    file.path(tempdir(), .)

  if (checkmate::test_file_exists(file) && isTRUE(force)) {
    file |> readr::read_rds()
  } else {
    osf_tbl |>
      osfr::osf_download(path = tempdir(), conflicts = "overwrite") |>
      magrittr::extract2("local_path") |>
      readr::read_rds()
  }
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
#' @param dir (Optional) A [`character`][base::as.character] string with the
#'   directory where the raw data file should be saved (Default: `tempdir()`).
#'
#' @return A [`character`][base::as.character] string with the file path of
#'   the raw data.
#'
#' @inheritParams get_data
#' @family utility functions
#' @export
#'
#' @examples
#' if (interactive()) {
#'   get_raw_data("gini_index")
#' }
get_raw_data <- function(data, dir = tempdir(), force = FALSE) {
  assert_data(data)
  checkmate::assert_string(dir)
  checkmate::assert_directory_exists(dir, access = "w")
  checkmate::assert_flag(force)

  # R CMD Check variable bindings fix (See: https://bit.ly/3z24hbU)
  # nolint start: object_usage_linter
  . <- NULL
  # nolint end

  osf_tbl <- do.call(
    what = paste0("get_", data, "_osf_tbl"),
    args = list(type = "raw")
  )

  file <-
    osf_tbl |>
    magrittr::extract2("name") |>
    magrittr::extract(1) %>%
    file.path(dir, .)

  if (checkmate::test_file_exists(file) && isTRUE(force)) {
    file
  } else {
    osf_tbl |>
      osfr::osf_download(path = dir, conflicts = "overwrite") |>
      magrittr::extract2("local_path")
  }
}

get_gini_index_osf_tbl <- function(type = "valid") {
  checkmate::assert_choice(type, c("raw", "valid"))

  if (type == "raw") {
    osfr::osf_retrieve_file("d2pae")
  } else if (type == "valid") {
    osfr::osf_retrieve_file("s6v58")
  }
}
