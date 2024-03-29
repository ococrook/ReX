% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/Rex-sampler-utils.R
\name{metropolisStretch}
\alias{metropolisStretch}
\title{Metroplis step for the stretch parameter}
\usage{
metropolisStretch(
  res,
  pilong,
  blong,
  dlong,
  currentq,
  currentSigma,
  bp,
  mean = 0,
  sd = 1,
  shape1 = 1,
  shape2 = 5,
  multivariate = FALSE,
  cormat = NULL,
  timepoints = timepoints,
  tCoef,
  index,
  numExch,
  density,
  phi
)
}
\arguments{
\item{res}{data frame of uptake data}

\item{pilong}{numeric vector of mixing parameters}

\item{blong}{numeric vector of rate parameters}

\item{dlong}{numeric vector of rate parameters}

\item{currentq}{numeric vector of current stretch parameters}

\item{currentSigma}{numeric current variance parameter}

\item{bp}{numeric vector of breakpoints}

\item{mean}{numeric mean of the proposal distribution}

\item{sd}{numeric standard deviation of the proposal distribution}

\item{shape1}{numeric shape parameter of the prior beta distribution}

\item{shape2}{numeric shape parameter of the prior beta distribution}

\item{multivariate}{logical flag for multivariate model}

\item{cormat}{numeric correlation matrix}

\item{timepoints}{numeric vector of time points}

\item{tCoef}{numeric vector of scaling variance of time points}

\item{index}{list of indices for each peptide residues}

\item{numExch}{list of number of exchangeable amides for each peptide}

\item{density}{character string of density function}

\item{phi}{numeric maximum uptake possible}
}
\value{
numeric updated stretch parameters
}
\description{
Metroplis step for the stretch parameter
}
