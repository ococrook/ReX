% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/Rex-helpers.R
\name{uptakeGuess}
\alias{uptakeGuess}
\title{uptakeGuess}
\usage{
uptakeGuess(res, numRep, numPeptides, numtimepoints, R, C, phi = 1)
}
\arguments{
\item{res}{An object of class DataFrame containing the results of the
hdx-ms  experiment}

\item{numRep}{The number of replicates}

\item{numPeptides}{The number of peptides}

\item{numtimepoints}{The number of timepoints}

\item{R}{The number of residues}

\item{C}{A matrix indicating the position of the residues in the peptides.}

\item{phi}{The maximum uptake possible. Default is 1.}
}
\value{
A matrix of intial uptake guesses
}
\description{
Function to help find good initial parameters by guessing the initial uptake
using a generalised inverse appraoach
}
\examples{
require(ReX)
require(dplyr)
data(BRD4_apo)

BRD4_apo <- BRD4_apo \%>\% filter(End < 100)
numTimepoints <- length(unique(BRD4_apo$Exposure))
Timepoints <- unique(BRD4_apo$Exposure)
numPeptides <- length(unique(BRD4_apo$Sequence))
BRD4_apo <- DataFrame(BRD4_apo)
C <- coverageHeatmap(res = BRD4_apo, plot = FALSE)

uptakeGuess(BRD4_apo,
            numRep = 3,
            numPeptides =  numPeptides,
            numtimepoints =  numTimepoints,
            R =  99,
            C = C,
            phi = 0.92)

}
