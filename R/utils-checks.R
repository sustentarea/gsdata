assert_data <- function(data) {
  checkmate::assert_string(data)

  data_choices <- c("gini_index")
  # data_choices <- data(packages = "gsdata"$results[, 3])

  if (!data %in% data_choices) {
    cli::cli_abort(
      paste0(
        "{.strong {cli::col_red('Data not found')}}. ",
        "Please choose from the following:\n\n",
        glue::glue_collapse(
          paste0("{.strong ", data_choices, "}"),
          sep = ", ",
          last = ", or "
        )
      )
    )
  }

  invisible(TRUE)
}
