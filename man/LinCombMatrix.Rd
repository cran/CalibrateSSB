\name{LinCombMatrix}
\alias{LinCombMatrix}
\alias{PeriodDiff}
\alias{Period}
\alias{LagDiff}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{Creation of linear combination matrices}
\description{Create matrices for changes (LagDiff), means (Period) and mean changes (PeriodDiff).}

\usage{
LinCombMatrix(n, period = NULL, lag = NULL, k = 0, takeMean = TRUE,
              removerows = TRUE, overlap = FALSE)

LagDiff(n, lag=1, removerows = TRUE)

Period(n, period = 1, k = 0, takeMean = TRUE, removerows = TRUE, overlap = FALSE)

PeriodDiff(n, period = 1, lag = period, k = 0, takeMean = TRUE,
           removerows = TRUE, overlap = FALSE)

}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{n}{Number of variables}
  \item{period}{Number of variables involved in each period}
  \item{lag}{Lag used for difference calculation}
  \item{k}{Shift the start of each period}
  \item{takeMean}{Calculate mean over each period (sum when FALSE)}
  \item{removerows}{Revove incomplete rows}
  \item{overlap}{Overlap between periods (moving averages)}
}


\value{Linear combination matrix}


\note{It can be useful to add row names to the resulting matrix before further use.}


\examples{
# We assume two years of four quarters (n=8)

# Quarter to quarter differences
LagDiff(8)

# Changes from same quarter last year
LagDiff(8,4)

# Yearly averages
Period(8,4)

# Moving yearly averages
Period(8,4,overlap=TRUE)

# Difference between yearly averages
PeriodDiff(8,4) # Also try n=16 with overlap=TRUE/FALSE

# Combine two variants and add row names
lc = rbind(LagDiff(8,4),PeriodDiff(8,4))
rownames(lc) = c("diffQ1","diffQ2","diffQ3","diffQ4","diffYearMean")
lc
}
