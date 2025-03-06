test_that("assert_data() | general test", {
  "gini_index" |>
    assert_data() |>
    expect_true()

  "TeSt" |>
    assert_data() |>
    expect_error()
})
