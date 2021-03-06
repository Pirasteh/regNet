% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/computeNetworkFlow_NewData.R
\name{computeNetworkFlowBasedOnGivenCorStat_CohortSpecificAbsoluteImpacts}
\alias{computeNetworkFlowBasedOnGivenCorStat_CohortSpecificAbsoluteImpacts}
\title{Network propagation module: Compute absolute cohort-specific impact matrix}
\usage{

  computeNetworkFlowBasedOnGivenCorStat_CohortSpecificAbsoluteImpacts(dataSetName,
  corStatDataSetName, networkName, pValCutoff, localGeneCutoff,
  colSumsThreshold, path, output = TRUE)
}
\arguments{
\item{dataSetName}{Name of the data set}

\item{corStatDataSetName}{Name of the data set from which pre-computed correlation statistics are taken}

\item{networkName}{Name of the network}

\item{pValCutoff}{Cutoff for significant links. Values from zero (most sparse network) to one (full network) are allowed.}

\item{localGeneCutoff}{Cutoff for removement of regulator links from/to genes in close chromosomal proximity. Set this to zero if no links should be removed.}

\item{colSumsThreshold}{Stop iterative computation of impact matrix if improvement is less than the given threshold}

\item{path}{Project path}

\item{output}{Show progress information. Default: TRUE}
}
\value{
Saves final impact matrix. See output for details.
}
\description{
This function computes an absolute cohort-specific impact matrix utilizing a given correlation statistics. This function requires a pre-computed basic initial absolute cohort-specific impact matrix computed by the function \code{\link{computeBasicNetworkFlowMatrixBasedOnGivenCorStat_CohortSpecificAbsoluteImpacts}}. This function allows to separate the computation of the initial from the final impact matrix. See \code{\link{computeNetworkFlowMatrixBasedOnGivenCorStat_CohortSpecificAbsoluteImpacts}} and \code{\link{computeNetworkFlowMatrix_CohortSpecificAbsoluteImpacts}} for more details.
}
\examples{

#Compute impact matrix using pre-computed correlation statistics
projectPath = getProjectPath( projectName = "MyFirstNetwork", path = "/home/seifert/regNet/AstrocytomaGrades/" )
computeNetworkFlowBasedOnGivenCorStat_CohortSpecificAbsoluteImpacts( dataSetName = "TCGA_GBM_SignatureTFs", corStatDataSetName = "AS_SignatureTFs", networkName = "AS_SignatureTFs", pValCutoff = 0.01, localGeneCutoff = 0, path = projectPath )

}
\seealso{
\code{\link{computeNetworkFlowMatrixBasedOnGivenCorStat_CohortSpecificAbsoluteImpacts}}, \code{\link{computeNetworkFlowMatrix_CohortSpecificAbsoluteImpacts}}
}
