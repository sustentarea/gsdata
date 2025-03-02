% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/get_data.R
\name{get_raw_data}
\alias{get_raw_data}
\title{Get the raw files of datasets from the Sustentarea's Global Syndemic Project}
\usage{
get_raw_data(data, dir)
}
\arguments{
\item{data}{A \code{\link[base:character]{character}} string with the name of the
dataset to be retrieved.}

\item{dir}{A \code{\link[base:character]{character}} string with the directory
where the raw data file will be saved.}
}
\value{
A \code{\link[base:character]{character}} string with the file path of
the raw data.
}
\description{
\ifelse{html}{\href{https://lifecycle.r-lib.org/articles/stages.html#experimental}{\figure{lifecycle-experimental.svg}{options: alt='[Experimental]'}}}{\strong{[Experimental]}}

\code{get_raw_data()} downloads the raw datasets from the Sustentarea's Global
Syndemic Project.

Click \href{https://sustentarea.github.io/gsdata/reference/index.html}{here}
or use \code{data(package = "gsdata")} to see all datasets available.
}
\examples{
if (interactive()) {
  get_raw_data("gini", tempdir())
}
}
\seealso{
Other utility functions: 
\code{\link{get_data}()}
}
\concept{utility functions}
