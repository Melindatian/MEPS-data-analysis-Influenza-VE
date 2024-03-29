% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/IF_ct.R
\name{svyct_rr_if}
\alias{svyct_rr_if}
\title{Relative Risk and Disease Rate for Contingency Table}
\usage{
svyct_rr_if(treatment, response, data, design)
}
\arguments{
\item{treatment}{a \code{list} contains treatment variable name, treatment (exposed) group indicator and control (unexposed) group indicator, respectively.}

\item{response}{a \code{list} contains response variable name,  event group indicator and non-event group indicator, respectively.}

\item{data}{a \code{data.frame}}

\item{design}{a \code{svydesign} object created by the svydesign function using survey package}
}
\value{
\describe{
\item{\code{result}}{a \code{data.frame} of estimated RR and treatment rate}
}
}
\description{
Estimate relative risk using contingency table with complex survey design
}
\details{
This function estimates the RR using contingency table method with complex survey design allowed
}
\examples{
library(survey)
library(surveyRR)
data("mepsRR")
options(survey.lonely.psu="adjust")
CTdsgn <- svydesign(
 id = ~VARPSU,
 strata = ~VARSTR,
 weights = ~LONGWT,
 data = mepsRR,
 nest = TRUE)

 treatment.list<- list("flushot_status","Having flushot","Not having flushot")
 response.list<-   list("disease_status",1,0)
 svyct_rr_if(treatment=treatment.list,response=response.list,data=mepsRR, design=CTdsgn)
}
\references{
Assessing the Effectiveness of Influenza Vaccination – influence function approach for comparative studies using publicly available medical expenditure data.
Mingmei Tian, Jihnhee Yu
}
\author{
Mingmei Tian
}
