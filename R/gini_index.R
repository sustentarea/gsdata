#' Gini index of per capita household income in Brazil
#'
#' @description
#'
#' `r lifecycle::badge("experimental")`
#'
#' [Gini index](https://en.wikipedia.org/wiki/Gini_coefficient) of per capita
#' household income by Brazil's municipalities for the years 1991, 2000 and
#' 2010.
#'
#' @details
#'
#' The [Gini index](https://en.wikipedia.org/wiki/Gini_coefficient) is a
#' measure of income inequality, ranging from 0 (perfect equality)
#' to 1 (perfect inequality). This dataset provides Gini indices for Brazilian
#' municipalities across three census years (1991, 2000, and 2010).
#'
#' The Brazilian Institute of Geography and Statistics
#' ([IBGE](https://www.ibge.gov.br/)) Automatic Retrieval System
#' ([SIDRA](https://sidra.ibge.gov.br/)) provides Gini data by municipality
#' only for the year 1991 ([Table 155](https://sidra.ibge.gov.br/tabela/155)).
#' However, this dataset includes information from three census periods (1991,
#' 2000, and 2010) as processed by the Institute for Applied Economic
#' Research ([IPEA](https://www.ipea.gov.br)), which had access to the complete
#' census data.
#'
#' The raw data is available on Brazil's public health system (SUS) platform
#' [DATASUS/Tabnet](https://datasus.saude.gov.br/informacoes-de-saude-tabnet/).
#' It can be accessed directly at the following link:
#' <http://tabnet.datasus.gov.br/cgi/ibge/censo/cnv/ginibr.def>
#'
#' ## Data munging
#'
#' The data munging process was performed in R and documented using the
#' [Quarto](https://quarto.org/) publishing system. The entire process is fully
#' reproducible and available in the following GitHub repository:
#' <https://github.com/sustentarea/gs-data-munging-1>
#'
#' ## Variable naming
#'
#' The variable names follow the
#' [tidyverse style guide](https://style.tidyverse.org/syntax.html#object-names)
#' , using lowercase letters with underscores separating words (snake_case) for
#' clarity and consistency.
#'
#' ## Variable classes
#'
#' No special variable classes were used in this dataset.
#'
#' @format A [`tibble`][dplyr::tibble] with 16,695 rows and 4 columns:
#'
#' \describe{
#'   \item{year}{
#'     The census year for which the Gini index was calculated (1991, 2000, or
#'     2010).
#'     \cr \cr
#'     R class: [`integer`][base::integer]
#'   }
#'
#'   \item{municipality_code}{
#'     The unique identification code for each Brazilian municipality.
#'     \cr \cr
#'     R class: [`integer`][base::integer]
#'   }
#'
#'   \item{municipality}{
#'     The name of the Brazilian municipality.
#'     \cr \cr
#'     R class: [`character`][base::character]
#'   }
#'
#'   \item{gini_index}{
#'     The Gini index value for the municipality, ranging from 0 (perfect
#'     equality) to 1 (perfect inequality).
#'     \cr \cr
#'     R class: [`double`][base::double]
#'   }
#' }
#'
#' @source Brazilian Institute of Geography and Statistics
#'   ([IBGE](https://www.ibge.gov.br/)).
#' @family datasets
#'
#' @references
#'
#' Instituto Brasileiro de Geografia e Estatística, Instituto de Pesquisas
#' Econômicas e Aplicadas, & Ministério da Saúde. (n.d.). _Índice de Gini da
#' renda domiciliar per capita segundo município --- Período: 1991, 2000 e 2010_
#' \[Gini index of per capita household income by municipality---period: 1991,
#' 2000, and 2010\] \[Dataset\]. DATASUS - Tabnet. Retrieved November 16, 2024,
#' from \url{http://tabnet.datasus.gov.br/cgi/ibge/censo/cnv/ginibr.def}
"gini_index"
