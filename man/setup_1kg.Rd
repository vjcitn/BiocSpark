% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/setup_1kg.R
\name{setup_1kg}
\alias{setup_1kg}
\title{set up the thousand-genomes demo from sparkhail}
\usage{
setup_1kg(s_context, h_context)
}
\arguments{
\item{s_context}{a spark_connect result}

\item{h_context}{a sparkhail::hail_context result}
}
\description{
set up the thousand-genomes demo from sparkhail
}
\examples{
sc <- sparklyr::spark_connect(master = 'local', 
        version = '2.4', config = sparkhail::hail_config())
hl <- sparkhail::hail_context(sc)
mt <- setup_1kg(sc, hl)
df1kg = sparkhail::hail_dataframe(mt)
}
