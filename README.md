# gsdata <a href = "https://sustentarea.github.io/gsdata/"><img src = "man/figures/hex-logo.png" align="right" width="120" /></a>

<!-- badges: start -->
[![Project Status: Active – The project has reached a stable, usable
state and is being actively
developed.](https://www.repostatus.org/badges/latest/active.svg)](https://www.repostatus.org/#active)
[![Lifecycle:
experimental](https://img.shields.io/badge/lifecycle-experimental-orange.svg)](https://lifecycle.r-lib.org/articles/stages.html#experimental)
[![R-CMD-check.yaml](https://github.com/sustentarea/sustentarea/actions/workflows/check-standard.yaml/badge.svg)](https://github.com/sustentarea/sustentarea/actions/workflows/check-standard.yaml)
[![Codecov test
coverage](https://codecov.io/gh/sustentarea/sustentarea/branch/main/graph/badge.svg)](https://app.codecov.io/gh/sustentarea/sustentarea?branch=main)
[![License:
MIT](https://img.shields.io/badge/license-MIT-green)](https://choosealicense.com/licenses/mit/)
<!-- badges: end -->

## Overview

`gsdata` is an R package designed to facilitate the documentation and
sharing of data from Sustentarea’s Global Syndemic Project. See the
package [website](https://sustentarea.github.io/gsdata/) for more
information.

## Installation

You can install `gsdata` using the
[`remotes`](https://github.com/r-lib/remotes) package:

``` r
remotes::install_github("sustentarea/gsdata")
```

## How to Use

The package provides a preview and documentation for each dataset. You
can find a list of available datasets
[here](https://sustentarea.github.io/gsdata/reference/index.html).

To download them, use the function `get_data()`. For example, to get the
`gini` dataset use:

``` r
get_data("gini")
```

The raw data files can be downloaded using the `get_raw_data()`
function.

``` r
get_raw_data("gini", file = "gini.csv")
```

## Data Convertion

If you need to convert the data to a different format, you can use the
following packages:

- [`readr`](https://readr.tidyverse.org/) for writing data to `csv`
  files.
- [`readxl`](https://readxl.tidyverse.org/) for writing data to `xlsx`
  (Excel) files.
- [`haven`](https://haven.tidyverse.org/) for writing data to `dta`
  (Stata), `sav` (SPSS), and `sas` (SAS) files.

## License

[![License:
MIT](https://img.shields.io/badge/license-MIT-green)](https://opensource.org/license/mit/)

`gsdata` code is released under the [MIT
license](https://opensource.org/license/mit/).
