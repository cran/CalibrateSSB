\name{CrossStrata}
\alias{CrossStrata}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{Crossing several factor variables}
\description{Create new factor variable by crossing levels in several variables}

\usage{CrossStrata(by, sep = "-", returnb = FALSE, asNumeric = FALSE, byExtra = NULL)}

%- maybe also 'usage' for other objects documented here.
\arguments{
\item{by}{Dataframe or matrix with several variables}
\item{sep}{Used to create new level names}
\item{returnb}{When TRUE an overview of original variabels according to new levels are also retuned.}
\item{asNumeric}{When TRUE the new variable is numeric.}
\item{byExtra}{Contains the same variables as by and represents another data set.}
}

\value{
\item{a}{The new variable}
\item{aExtra}{New variable according to byExtra}
\item{b}{Overview of original variabels according to new levels}
}

%\author{?yvind Langsrud}


\examples{
CrossStrata(cbind(factor(rep(1:3,2)),c('A',rep('B',5)) ))
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.

