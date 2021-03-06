% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/auxiliary.R
\name{confint.dr4pl}
\alias{confint.dr4pl}
\title{Fit a 4 parameter logistic (4PL) model to dose-response data.}
\usage{
\method{confint}{dr4pl}(object, parm, level = 0.95, ...)
}
\arguments{
\item{object}{An object of the dr4pl class}

\item{parm}{Parameters of the 4PL model}

\item{level}{Confidence level}

\item{...}{Other parameters to be passed}
}
\value{
A matrix of the confidence intervals in which each row represents a
  parameter and each column represents the lower and upper bounds of the
  confidence intervals of the corresponding parameters.
}
\description{
Compute the confidence intervals of parameter estimates of a fitted
  model.
}
\details{
This function computes the confidence intervals of the parameters of the
  4PL model based on the second order approximation to the Hessian matrix of the
  loss function of the model. Please refer to Subsection 5.2.2 of 
  Seber and Wild (1989).
}
\examples{
  obj.dr4pl <- dr4pl(Response ~ Dose, data = sample_data_1)
  parm <- obj.dr4pl$parameters

  confint(obj.dr4pl, parm = parm, level = 0.95)

}
\references{
\insertRef{Seber1989}{dr4pl}
}
