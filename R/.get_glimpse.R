# gini_index <- get_glimpse("gini_index")
# usethis::use_data(gini_index, overwrite = TRUE)

get_glimpse <- function(data) {
  assert_data(data)

  get_data(data) |>
    dplyr::slice_sample(n = 10)
}
