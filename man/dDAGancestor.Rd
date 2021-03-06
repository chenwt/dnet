% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/dDAGancestor.r
\name{dDAGancestor}
\alias{dDAGancestor}
\title{Function to find common ancestors of two terms/nodes from a direct acyclic graph (DAG)}
\usage{
dDAGancestor(g, term1 = NULL, term2 = NULL, verbose = T)
}
\arguments{
\item{g}{an object of class "igraph" or "graphNEL"}

\item{term1}{the first term/node as input}

\item{term2}{the second term/node as input}

\item{verbose}{logical to indicate whether the messages will be
displayed in the screen. By default, it sets to true for display}
}
\value{
\itemize{
\item{When two terms are given: a list of terms/nodes that are common
ancestors for two input terms/nodes}
\item{When two terms are given as NULL: a sparse matrix of children x
ancestors is built for all terms, with '1' for the reachable and
otherwise '0'.}
\item{When one of terms is given as NULL: a sparse matrix of children x
ancestors is built but only for non-null input terms, with '1' for the
reachable and otherwise '0'.}
}
}
\description{
\code{dDAGancestor} is supposed to find a list of common ancestors
shared by two terms/nodes, given a direct acyclic graph (DAG; an
ontology). If two terms are given as NULL, then a sparse matrix of
children x ancestors is built for all terms. If one of them is null,
then a sparse matrix of children x ancestors is built but only for
non-null input terms.
}
\note{
none
}
\examples{
# 1) load HPPA as igraph object
ig.HPPA <-dRDataLoader(RData='ig.HPPA')
g <- ig.HPPA

# 2) randomly give two terms
term1 <- sample(V(g)$name,1)
term2 <- sample(V(g)$name,1)

# 3) find common ancestors
dDAGancestor(g, term1, term2)
}
\seealso{
\code{\link{dDAGinduce}}
}
