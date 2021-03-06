% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/manage_cached_files.R
\name{manage_bomrang_cache}
\alias{manage_bomrang_cache}
\alias{bomrang_cache_list}
\alias{bomrang_cache_delete}
\alias{bomrang_cache_delete_all}
\alias{bomrang_cache_details}
\title{Manage locally cached bomrang files}
\usage{
bomrang_cache_list()

bomrang_cache_delete(files, force = TRUE)

bomrang_cache_delete_all(force = TRUE)

bomrang_cache_details(files = NULL)
}
\arguments{
\item{files}{Character.  One or more complete file names with no file path}

\item{force}{Logical.  Should files be force deleted? Defaults to :
\code{TRUE}}
}
\description{
The user is given an option when downloading the bomrang
data to cache or not to cache the data for later use.  If
\code{cache == TRUE}, then the bomrang data files are saved in a
directory in the users' home file space.  These functions provide facilities
for interacting and managing these files.
}
\details{
\code{bomrang_cache_delete} only accepts one file name, while
\code{bomrang_cache_delete_all} does not accept any names, but deletes all
files.  For deleting many specific files, use \code{cache_delete} in a
\code{\link{lapply}} type call.

We files cache using \code{\link[rappdirs]{user_cache_dir}}, find your
cache folder by executing \code{rappdirs::user_cache_dir("bomrang")}
}
\note{
These functions were adapted from rOpenSci's \code{\link[ccafs]{cc_cache}}.
}
\section{Functions}{

\itemize{
 \item \code{bomrang_cache_list()} returns a character vector of full path
 file names
 \item \code{bomrang_cache_delete()} deletes one or more files, returns
 nothing
 \item \code{bomrang_cache_delete_all()} delete all files, returns nothing
 \item \code{bomrang_cache_details()} prints file name and file size for each
 file, supply with one or more files, or no files (and get details for
 all available)
}
}

\examples{
\dontrun{
# List files in cache
bomrang_cache_list()

# List info for single files
bomrang_cache_details(files = bomrang_cache_list()[1])
bomrang_cache_details(files = bomrang_cache_list()[2])

# List info for all files
bomrang_cache_details()

# Delete files by name in cache
bomrang_cache_delete(files = bomrang_cache_list()[1])

# Delete all files in cache
bomrang_cache_delete_all()
}

}
\author{
Original: Scott Chamberlain, \email{scott@ropensci.org}, adapted for
use in this package by Adam H Sparks, \email{adamhsparks@gmail.com}
}
