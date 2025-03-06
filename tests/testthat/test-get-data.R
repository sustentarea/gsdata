testthat::test_that("get_data() | General test", {
  # gini_index
  "gini_index" |>
    get_data() |>
    checkmate::expect_tibble()

  "gini_index" |>
    get_data(force = TRUE) |>
    checkmate::expect_tibble()
})

testthat::test_that("get_data() | Error test", {
  # assert_data(data)
  get_data("TeSt", FALSE) |> testthat::expect_error()

  # checkmate::assert_flag(force)
  get_data("gini_index", "a") |> testthat::expect_error()
})

testthat::test_that("get_raw_data() | General test", {
  # gini_index
  "gini_index" |>
    get_raw_data() |>
    checkmate::expect_string()

  "gini_index" |>
    get_raw_data(force = TRUE) |>
    checkmate::expect_string()
})

testthat::test_that("get_data() | Error test", {
  # assert_data(data)
  get_data("TeSt", tempdir(), FALSE) |> testthat::expect_error()

  # checkmate::assert_string(dir)
  get_data("TeSt", 1, FALSE) |> testthat::expect_error()

  # checkmate::assert_directory_exists(dir, access = "w")
  get_data("TeSt", "./TeSt", FALSE) |> testthat::expect_error()

  # checkmate::assert_flag(force)
  get_data("gini_index", tempdir(), "a") |> testthat::expect_error()
})

testthat::test_that("get_gini_osf_tbl() | General test", {
  "valid" |>
    get_gini_index_osf_tbl() |>
    checkmate::expect_tibble()

  "raw" |>
    get_gini_index_osf_tbl() |>
    checkmate::expect_tibble()
})

testthat::test_that("get_gini_osf_tbl() | Error test", {
  # checkmate::assert_choice(type, c("raw", "valid"))
  get_gini_index_osf_tbl("TeSt") |> testthat::expect_error()
})
