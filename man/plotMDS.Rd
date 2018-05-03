% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/AllGenerics.R, R/plotMDS.R
\docType{methods}
\name{plotMDS}
\alias{plotMDS}
\alias{plotMDS,daFrame-method}
\title{MDS plot}
\usage{
plotMDS(x, ...)

\S4method{plotMDS}{daFrame}(x, color_by = "condition")
}
\arguments{
\item{x}{a \code{\link{daFrame}}.}

\item{...}{optional arguments.}

\item{color_by}{character string that appears as a column name of \code{rowData(x)}.
Specifies the color coding.}
}
\value{
a \code{ggplot} object.
}
\description{
Multi-dimensional scaling (MDS) plot on median marker expressions.
}
\examples{
data(PBMC_fs, PBMC_panel, PBMC_md)
re <- daFrame(PBMC_fs, PBMC_panel, PBMC_md)
plotMDS(re)

}
\references{
Nowicka M, Krieg C, Weber LM et al. 
CyTOF workflow: Differential discovery in 
high-throughput high-dimensional cytometry datasets.
\emph{F1000Research} 2017, 6:748 (doi: 10.12688/f1000research.11622.1)
}
\author{
Helena Lucia Crowell \email{crowellh@student.ethz.ch}
}