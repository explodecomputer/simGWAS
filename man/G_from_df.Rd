% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/parse_g.R
\name{G_from_df}
\alias{G_from_df}
\title{Generate G matrix from data frame}
\usage{
G_from_df(df)
}
\arguments{
\item{df}{A data frame with required columns i (the causal trait name), j (the 
response trait name) and eff (the effect of i on j)}
}
\value{
A square matrix with dimension number of traits
}
\description{
Specify G matrix as a data frame in long format, one row represents one causal 
relationship of trait `i` on trait `j` with effect `eff`.
}
\examples{

# Simple example
df <- dplyr::tribble(~i, ~j, ~eff,
                     "Y", "X", 0.25,
                     "X", "A", 0.24,
                     "Y", "A", 0.34)

G_from_df(df)

}
