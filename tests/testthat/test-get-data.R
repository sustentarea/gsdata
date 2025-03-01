test_that("get_gini_url() | general test", {
  get_gini_url("valid") |> checkmate::expect_character()
  get_gini_url("raw") |> checkmate::expect_character()
  get_gini_url("test") |> expect_error()
})
