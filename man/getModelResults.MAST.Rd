% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/getModelResults.MAST.r
\name{getModelResults.MAST}
\alias{getModelResults.MAST}
\title{Calculate model statistics for MAST model fitting results}
\usage{
\code{
getModelResults.MAST(
  zlm_result, lrTest, contrast,
  contrast.type,
  method.p_adjust="BH")}
}
\arguments{
\item{zlm_result}{The zlm fit results, generally the output of \code{MAST::zlm.SingleCellAssay}}

\item{contrast}{character, the name of the contrast for which to determine significance (and possibly logFC).}

\item{contrast.type}{character, the type of contrast being extracted. Must be specified, as logFC can only be extracted for binary and/or continuous contrasts. For categorical contrasts, only significance values are extracted. Options are "continuous", "binary", "categorical"; partial matches allowed.}

\item{method.p_adjust}{character, the method to be used for calculating adjusted p-values. Passed to \code{p.adjust}. Defaults to "BH".}

\item{lrTest_result}{The likelihood-ratio test results, generally the output of \code{MAST::lrTest}. Needed for determinations of significance.}
}
\value{
A data frame with one row per gene, and columns for the gene name, (optionally logFC,) p-value, and adjusted p-values.
}
\description{
Calculate log-fold-changes and significance values for a fitted MAST model, and format the results
for more straightforward viewing.
}
