% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/stopping_criteria.R
\name{stopping_criteria}
\alias{stopping_criteria}
\title{Stopping Criteria for Ending the Search}
\usage{
stopping_criteria(
  df,
  round,
  stop,
  min_improvement,
  stop_rounds = 3,
  reset_stop_rounds = TRUE,
  stop_metric = "auc"
)
}
\arguments{
\item{df}{data.frame. includes the metrics of ensemblem model performance}

\item{round}{integer. the current round of optimization}

\item{stop}{integer. current round of stopping penalty}

\item{min_improvement}{numeric. specifies the minimum improvement in model
evaluation metric to qualify further optimization search.}

\item{stop_rounds}{integer. number of stoping rounds, in case the model stops
improving}

\item{reset_stop_rounds}{logical. if TRUE, everytime the model improves the
stopping rounds penalty is resets to 0.}

\item{stop_metric}{character. model stopping metric. the default is \code{"auc"},
but \code{"aucpr"} and \code{"mcc"} are also available.}
}
\value{
a matrix of F-Measures for different thresholds or the highest F-Measure value
}
\description{
Defines criteria for ending the optimization search
}
\author{
E. F. Haghish
}
