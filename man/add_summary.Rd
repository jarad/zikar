% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/utils.R
\name{add_summary}
\alias{add_summary}
\title{Plot a running 5 number summary of zika data}
\usage{
add_summary(p, data = NULL, color = "black")
}
\arguments{
\item{p}{a plotly visualization}

\item{location}{a regular expression matching the location column in the \link{zika} dataset.}

\item{a}{valid R colour.}
}
\description{
Plot a running 5 number summary of zika data
}
\examples{

brazil <- dplyr::filter(zika, country == "Brazil")

plot_ly(zika, x = ~report_date) \%>\%
  add_summary() \%>\%
  add_summary(data = brazil, "red")
}

