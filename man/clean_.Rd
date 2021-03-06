% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/clean_.R, R/clean_functions.R
\name{clean_}
\alias{clean_}
\alias{clean_df}
\alias{clean_authors}
\alias{clean_colnames}
\title{Clean a data.frame or vector}
\usage{
clean_df(data)

clean_authors(x)

clean_colnames(x)
}
\arguments{
\item{data}{A data.frame with bibliographic information.}

\item{x}{A vector of strings}
}
\value{
Returns the input, but cleaner.
}
\description{
Cleans column and author names
}
\examples{
df <-  data.frame(
  X..title. = c(
    "EviAtlas: a tool for visualising evidence synthesis databases",
    "revtools: An R package to support article screening for evidence synthesis",
    "An automated approach to identifying search terms for systematic reviews",
    "Reproducible, flexible and high-throughput data extraction from primary literature"),
  YEAR = c("2019", "2019", "2019", "2019"),
  authors = c(
    "Haddaway et al",
    "Westgate",
    "EM Grames AND AN Stillman  & MW Tingley and CS Elphick",
    "Pick et al")
)

clean_df(df)

# or use sub-functions
colnames(df) <- clean_colnames(df)
# colnames(df) <- clean_colnames(colnames(df)) # also works
df$author <- clean_authors(df$author)

}
