% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/get_data.R
\name{get_data}
\alias{get_data}
\title{Get validated datasets from the Sustentarea's Global Syndemic Project}
\usage{
get_data(data, force = FALSE)
}
\arguments{
\item{data}{A \code{\link[base:character]{character}} string with the name of the
dataset to be retrieved.}

\item{force}{(Optional) A \code{\link[base:logical]{logical}} flag indicating if
the raw data file should be downloaded even if it already exists. If
\code{TRUE}, the file will be downloaded again (Default: \code{FALSE}).}
}
\value{
A \code{\link[dplyr:reexports]{tibble}} with the requested dataset.
}
\description{
\ifelse{html}{\href{https://lifecycle.r-lib.org/articles/stages.html#experimental}{\figure{lifecycle-experimental.svg}{options: alt='[Experimental]'}}}{\strong{[Experimental]}}

\code{get_data()} retrieves validated datasets from the Sustentarea's Global
Syndemic Project.

Click \href{https://sustentarea.github.io/gsdata/reference/index.html}{here}
or use \code{data(package = "gsdata")} to see all datasets available.
}
\examples{
if (interactive()) {
  get_data("gini_index")
}
}
\seealso{
Other utility functions: 
\code{\link{get_raw_data}()}
}
\concept{utility functions}
