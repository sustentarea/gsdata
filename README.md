# gsdata <a href = "https://sustentarea.github.io/gsdata/"><img src = "man/figures/logo.svg" align="right" width="135" /></a>

<!-- quarto render -->

<!-- badges: start -->
[![Project Status: Active – The project has reached a stable, usable
state and is being actively
developed.](https://www.repostatus.org/badges/latest/active.svg)](https://www.repostatus.org/#active)
[![Lifecycle:
experimental](https://img.shields.io/badge/lifecycle-experimental-orange.svg)](https://lifecycle.r-lib.org/articles/stages.html#experimental)
[![R-CMD-check.yaml](https://github.com/sustentarea/gsdata/actions/workflows/check-standard.yaml/badge.svg)](https://github.com/sustentarea/gsdata/actions/workflows/check-standard.yaml)
[![Codecov test
coverage](https://codecov.io/gh/sustentarea/gsdata/graph/badge.svg?token=3NboIwx7uo)](https://codecov.io/gh/sustentarea/gsdata)
[![License:
MIT](https://img.shields.io/badge/license-MIT-green)](https://choosealicense.com/licenses/mit/)
<!-- badges: end -->

## Overview

🧒🏽🍎🥦🌽🥕🌱🌾🍚🍽️🏥🌍☀️🌡️💧🌳🚜🌧️🌦️📆🇧🇷

`gsdata` is an R package designed to facilitate the documentation and
sharing of data from [Sustentarea’s Global Syndemic
Project](https://osf.io/8w36c/).

## Installation

You can install `gsdata` using the
[`remotes`](https://github.com/r-lib/remotes) package:

``` r
remotes::install_github("sustentarea/gsdata")
```

## Usage

The package provides a preview and documentation for each dataset. You
can find a list of available datasets
[here](https://sustentarea.github.io/gsdata/reference/index.html).

To download them, use the function `get_data()`. For example, to get the
`gini_index` dataset use:

``` r
get_data("gini_index")
```

The raw data files can be downloaded using the `get_raw_data()`
function.

``` r
get_raw_data("gini_index")
```

## Data Convertion

If you need to convert the data to a different format, we recommend
using the following packages:

- [`readr`](https://readr.tidyverse.org/): For writing data to `csv`
  files
- [`readxl`](https://readxl.tidyverse.org/): For writing data to `xlsx`
  (Excel) files
- [`haven`](https://haven.tidyverse.org/): For writing data to `dta`
  (Stata), `sav` (SPSS), and `sas` (SAS) files

## License

[![License:
MIT](https://img.shields.io/badge/license-MIT-green)](https://opensource.org/license/mit/)

`gsdata` code is released under the [MIT
license](https://opensource.org/license/mit/).
