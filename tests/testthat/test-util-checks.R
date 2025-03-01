test_that("*_data() | general test", {
  assert_data("gini") |> expect_true()
  assert_data("DATA") |> expect_error()
})
