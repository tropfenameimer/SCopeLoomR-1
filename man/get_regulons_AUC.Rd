% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/loom.R
\name{get_regulons_AUC}
\alias{get_regulons_AUC}
\title{get_regulons_AUC}
\usage{
get_regulons_AUC(
  loom,
  column.attr.name = "MotifRegulonsAUC",
  rows = "regulons",
  columns = "cells"
)
}
\arguments{
\item{loom}{.loom file name}

\item{column.attr.name}{Type of regulon to retrieve; Usually 'MotifRegulonsAUC' for motif-based regulons, or 'TrackRegulonsAUC' for track-based (e.g. ChIP-seq) regulons. 
(Might change according to the SCENIC/pySCENIC pipeline version and settings used).}

\item{rows}{Type of data stored as rows (only for informative purposes) Default: "regulons"}

\item{columns}{Type of data stored as columns (only for informative purposes) Default: "cells"}
}
\value{
AUC matrix in the slot \code{loom[["col_attrs"]][["RegulonsAUC"]][]}. 
If AUCell is installed, it will be stored as aucellResults object.
}
\description{
Get AUCell matrix from the given loom file
}
\examples{
loom_file_pathath <-  file.path(system.file('extdata', package='SCopeLoomR'), "example.loom")
loom <- open_loom(loomPath)

regulons_AUC <- get_regulons_AUC(loom)
}
