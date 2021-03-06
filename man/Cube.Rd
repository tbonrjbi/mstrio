% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/cube.R
\docType{class}
\name{Cube}
\alias{Cube}
\title{Extract a MicroStrategy cube into a R Data.Frame}
\description{
Access, filter, publish, and extract data from MicroStrategy in-memory cubes

     Attributes:
       connection: MicroStrategy connection object returned by `microstrategy.Connection()`.
       cube_id: Identifier of a pre-existing cube containing the required data.
       parallel (bool, optional): If True, use asynchronous requests to download data. If False (default), this
         feature will be disabled.
}
\examples{
\donttest{
# Create a connection object.
connection = connect_mstr(base_url, username, password, project_name)

# Create a cube object.
my_cube <- Cube$new(connection=conn, cube_id="...")

# See attributes and metrics in the report.
my_cube$attributes
my_cube$metrics
my_cube$attr_elements

# Specify attributes and metrics (columns) to be fetched.
my_cube$apply_filters(attributes = my_report$attributes[1:2],
                         metrics = my_report$metrics[1:2])

# See the selection of attributes, metrics and attribute elements.
my_cube$selected_attributes
my_cube$selected_metrics
my_cube$selected_attr_elements

# Clear filtering to load a full dataset.
my_cube$clear_filters()

# Fetch data from the Intelligence Server.
my_cube$to_dataframe()

# See the dataframe.
my_cube$dataframe
}
}
\section{Public fields}{
\if{html}{\out{<div class="r6-fields">}}
\describe{
\item{\code{connection}}{MicroStrategy connection object}

\item{\code{cube_id}}{Identifier of a cube.}
}
\if{html}{\out{</div>}}
}
\section{Methods}{
\subsection{Public methods}{
\itemize{
\item \href{#method-new}{\code{Cube$new()}}
\item \href{#method-to_dataframe}{\code{Cube$to_dataframe()}}
\item \href{#method-apply_filters}{\code{Cube$apply_filters()}}
\item \href{#method-clear_filters}{\code{Cube$clear_filters()}}
\item \href{#method-get_attr_elements}{\code{Cube$get_attr_elements()}}
\item \href{#method-clone}{\code{Cube$clone()}}
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-new"></a>}}
\subsection{Method \code{new()}}{
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{Cube$new(connection, cube_id, parallel = FALSE)}\if{html}{\out{</div>}}
}

}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-to_dataframe"></a>}}
\subsection{Method \code{to_dataframe()}}{
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{Cube$to_dataframe(
  limit = NULL,
  multi_df = FALSE,
  callback = function(x, y) { }
)}\if{html}{\out{</div>}}
}

}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-apply_filters"></a>}}
\subsection{Method \code{apply_filters()}}{
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{Cube$apply_filters(attributes = NULL, metrics = NULL, attr_elements = NULL)}\if{html}{\out{</div>}}
}

}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-clear_filters"></a>}}
\subsection{Method \code{clear_filters()}}{
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{Cube$clear_filters()}\if{html}{\out{</div>}}
}

}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-get_attr_elements"></a>}}
\subsection{Method \code{get_attr_elements()}}{
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{Cube$get_attr_elements(verbose = TRUE)}\if{html}{\out{</div>}}
}

}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-clone"></a>}}
\subsection{Method \code{clone()}}{
The objects of this class are cloneable with this method.
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{Cube$clone(deep = FALSE)}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{deep}}{Whether to make a deep clone.}
}
\if{html}{\out{</div>}}
}
}
}
