% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/AllGenerics.R, R/assignPrelim.R
\name{assignPrelim}
\alias{assignPrelim}
\alias{assignPrelim,flowFrame,data.frame-method}
\alias{assignPrelim,flowFrame,vector-method}
\alias{assignPrelim,character,data.frame-method}
\alias{assignPrelim,character,vector-method}
\title{Single-cell debarcoding (1)}
\usage{
assignPrelim(x, y, ...)

\S4method{assignPrelim}{flowFrame,data.frame}(x, y, cofactor = 10, verbose = TRUE)

\S4method{assignPrelim}{flowFrame,vector}(x, y, cofactor = 10, verbose = TRUE)

\S4method{assignPrelim}{character,data.frame}(x, y, cofactor = 10, verbose = TRUE)

\S4method{assignPrelim}{character,vector}(x, y, cofactor = 10, verbose = TRUE)
}
\arguments{
\item{x}{a \code{\link{flowFrame}} or character of an FCS file name.}

\item{y}{the debarcoding scheme. A binary matrix with sample names as row
names and numeric masses as column names OR a vector of numeric masses 
corresponding to barcode channels. When the latter is supplied, 
`assignPrelim` will create a scheme of the appropriate format internally.}

\item{...}{optional arguments.}

\item{cofactor}{numeric. Cofactor used for asinh transformation.}

\item{verbose}{logical. Should extra information on progress be reported?}
}
\value{
Returns a \code{\link{dbFrame}} containing measurement intensities,
the debarcoding key, a numeric verctor of barcode IDs and separations
between positive and negative barcode populations, and barcode intensities
normalized by population.
}
\description{
Assigns a preliminary barcode ID to each event.
}
\examples{
data(sample_ff, sample_key)
assignPrelim(x = sample_ff, y = sample_key)

}
\references{
Zunder, E.R. et al. (2015).
Palladium-based mass tag cell barcoding with a doublet-filtering scheme 
and single-cell deconvolution algorithm.
\emph{Nature Protocols} \bold{10}, 316-333.
}
\author{
Helena Lucia Crowell \email{helena.crowell@uzh.ch}
}
