% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/REMPtools.R
\name{GRannot}
\alias{GRannot}
\title{Annotate genomic ranges data with gene region information.}
\usage{
GRannot(object.GR, refgene, symbol = FALSE, verbose = FALSE)
}
\arguments{
\item{object.GR}{An \code{\link{GRanges}} object of a genomic location database.}

\item{refgene}{A complete refGene annotation database returned by
\code{\link{fetchRefSeqGene}} (with parameter \code{mainOnly = FALSE}).}

\item{symbol}{Logical parameter. Should the annotation return gene symbol?}

\item{verbose}{Logical parameter. Should the function be verbose?}
}
\value{
A \code{\link{GRanges}} or a \code{\link{GRangesList}} object containing refSeq
Gene database.
}
\description{
\code{GRannot} is used to annotate a \code{\link{GRanges}} dataset with gene region
information using refseq gene database
}
\details{
The annotated gene region information includes: protein coding gene (InNM),
noncoding RNA gene (InNR), 2000 base pair upstream of the transcript start site (InTSS),
5'UTR (In5UTR), coding sequence (InCDS), exon (InExon), and 3'UTR (In3UTR). The intergenic
and intron regions can then be represented by the combination of these region data.
The number shown in these columns represent the row number or 'index' column in the
main refgene database obtained by \code{\link{fetchRefSeqGene}}.
}
\examples{
data(Alu.hg19.demo)
if (!exists("refgene.hg19")) 
  refgene.hg19 <- fetchRefSeqGene(annotation.source = "AH", 
                                  genome = "hg19",
                                  verbose = TRUE)
Alu.hg19.demo.refGene <- GRannot(Alu.hg19.demo, refgene.hg19, verbose = TRUE)
Alu.hg19.demo.refGene

}
