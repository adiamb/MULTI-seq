\name{ MULTIseq.align }

\alias{ MULTIseq.align }

\title{ MULTIseq.align }

\description{ MULTIseq.align aligns MULTI-seq sample barcode reads to reference sequences in 10,000-cell buckets, returning sample barcode UMI count matrix. }

\usage{ MULTIseq.align(readTable, cellIDs, ref) }

\arguments{
  \item{readTable}{ An nRead x 3 dataframe with columns correpsonding to (1) cell barcode, (2) UMI, and (3) MULTI-seq sample barcode sequences, as generated by 'MULTIseq.preProcess'. }
  \item{cellIDs}{ Vector of cellIDs which the user wants to align. }
  \item{ref}{ Vector of reference MULTI-seq sample barcode sequences. }
}

\details{ Requires 'stringdist' R package. }

\value{ A MULTI-seq sample barcode UMI count matrix, including total sample barocde nUMI with and without UMI duplication adjustment. This dataframe should be used as input into the MULTI-seq sample classification workflow. }

\references{ van der Loo M. The stringdist package for approximate string matching. The R Journal. 2014; 6:111-22. }

\author{ Chris McGinnis }

\examples{ barTable <- MULTIseq.align(readTable, cellIDs, ref) }
