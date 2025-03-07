% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/Main_Doublet_Decon.R
\name{Main_Doublet_Decon}
\alias{Main_Doublet_Decon}
\title{Main DoubletDecon v1.0.1}
\usage{
Main_Doublet_Decon(rawDataFile, groupsFile, filename, location,
  fullDataFile = NULL, removeCC = FALSE, species = "mmu", rhop = 1,
  write = TRUE, PMF = TRUE, useFull = FALSE, heatmap = TRUE,
  centroids = FALSE, num_doubs = 100, only50 = FALSE, min_uniq = 4)
}
\arguments{
\item{rawDataFile}{Name of file containing ICGS or Seurat expression data (gene by cell)}

\item{groupsFile}{Name of file containing group assignments (3 column: cell, group(numeric), group(numeric or character))}

\item{filename}{Unique filename to be incorporated into the names of outputs from the functions.}

\item{location}{Directory where output should be stored}

\item{fullDataFile}{Name of file containing full expression data (gene by cell). Default is NULL.}

\item{removeCC}{Remove cell cycle gene cluster by KEGG enrichment. Default is FALSE.}

\item{species}{Species as scientific species name, KEGG ID, three letter    species abbreviation, or NCBI ID. Default is "mmu".}

\item{rhop}{x in mean+x*SD to determine upper cutoff for correlation in the blacklist. Default is 1.}

\item{write}{Write output files as .txt files. Default is TRUE.}

\item{PMF}{Use step 2 (unique gene expression) in doublet determination criteria. Default is TRUE.}

\item{useFull}{Use full gene list for PMF analysis. Requires fullDataFile. Default is FALSE.}

\item{heatmap}{Boolean value for whether to generate heatmaps. Default is TRUE. Can be slow to datasets larger than ~3000 cells.}

\item{centroids}{Use centroids as references in deconvolution instead of the default medoids.}

\item{num_doubs}{The user defined number of doublets to make for each pair of clusters. Default is 100.}

\item{only50}{use only synthetic doublets created with 50\%/50\% mix of parent cells, as opposed to the extended option of 30\%/70\% and 70\%/30\%, default is FALSE.}

\item{min_uniq}{minimum number of unique genes required for a cluster to be rescued}
}
\value{
data_processed = new expression file (cleaned).

groups_processed = new groups file (cleaned).

PMF_results = pseudo marker finder t-test results (gene by cluster).

DRS_doublet_table = each cell and whether it is called a doublet by deconvolution analysis.

DRS_results = results of deconvolution analysis (cell by cluster) in percentages.

Decon_called_freq = percentage of doublets called in each cluster by deconvolution analysis.

Final_doublets_groups = new groups file containing only doublets.

Final_nondoublets_groups = new groups file containing only non doublets.
}
\description{
This is the main function. This function identifies clusters of doublets with a combination of deconvolution analysis and unique gene expression and individual doublet cells with deconvolution analysis.
}
\keyword{decon}
\keyword{doublet}
\keyword{main}
