\name{WideFromCalibrate}
\alias{WideFromCalibrate}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{Rearrange output from CalibrateSSB. Ready for input to PanelEstimation.}
\description{One row for each id and one column for each wave.}


\usage{WideFromCalibrate(a,wave,id,subSet=NULL,extra=NULL)}

%- maybe also 'usage' for other objects documented here.
\arguments{
\item{a}{Output from CalibrateSSB}
\item{wave}{Time or another repeat variable.}
\item{id}{Identifier variable.}
\item{subSet}{Grouping variable for splitting ouput.}
\item{extra}{Dataset with extra variables not in a}
}

\value{
Output has the same elements (+ extra) as input (a), but rearranged.
When subSet is input otput is a list according to the subSet levels.
}

%\author{?yvind Langsrud}


\examples{
# See examples in PanelEstimation
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.

