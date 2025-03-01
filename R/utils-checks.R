assert_data <- function(data) {
  data_choices <- c("gini")
  # data_choices <- data(packages = "gsdata"$results[, 3])

  if (!data %in% data_choices) {
    cli::cli_abort(
      paste0(
        "{.strong {cli::col_red('Data not found')}}. ",
        "Please choose from the following:\n\n",
        paste0(paste0("{.strong ", data_choices, "}"), collapse = ", ")
      )
    )
  }

  invisible(TRUE)
}
