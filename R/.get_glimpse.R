# gini <- get_glimpse("gini")
# usethis::use_data(gini)

get_glimpse <- function(data) {
  assert_data(data)

  get_data(data) |>
    dplyr::slice_sample(n = 10)
}
