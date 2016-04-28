\name{AkuData}
\alias{AkuData}
\alias{testDataBasis}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{Generate test data}
\description{Generate test data of eight quarters}
\usage{
AkuData(n)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{n}{
Number of observations within each quarter.
}
}

\value{
A data frame with the following variables:
\item{id}{Sample unit identifier}
\item{year}{Year}
\item{q}{Quarter}
\item{month}{Month}
\item{R}{Response indicator}
\item{age}{Age group}
\item{sex}{Education group}
\item{famid}{Family identifier}
\item{unemployed}{Unemployed}
\item{workforce}{In workforce}
}

\examples{
# Generates data - two years
z = AkuData(3000) # 3000 in each quarter
}
