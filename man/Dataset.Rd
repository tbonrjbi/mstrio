% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/datasets.R
\docType{class}
\name{Dataset}
\alias{Dataset}
\title{Create, update, delete and certify MicroStrategy datasets}
\description{
When creating a new dataset, provide a dataset name and an optional description.
When updating a pre-existing dataset, provide the dataset identifier. Tables are added to the
dataset in an iterative manner using `add_table()`.
}
\examples{
\donttest{
# Create data frames
df1 <- data.frame("id" = c(1, 2, 3, 4, 5),
                  "first_name" = c("Jason", "Molly", "Tina", "Jake", "Amy"),
                  "last_name" = c("Miller", "Jacobson", "Turner", "Milner", "Cooze"))

df2 <- data.frame("id" = c(1, 2, 3, 4, 5),
                  "age" = c(42, 52, 36, 24, 73),
                  "state" = c("VA", "NC", "WY", "CA", "CA"),
                  "salary" = c(50000, 100000, 75000, 85000, 250000))

# Create a list of tables containing one or more tables and their names
my_dataset <- Dataset$new(connection=conn, name="HR Analysis")
my_dataset$add_table("Employees", df1, "add")
my_dataset$add_table("Salaries", df2, "add")
my_dataset$create()

# By default Dataset$create() will upload the data to the Intelligence Server and publish the
 dataset.
# If you just want to create the dataset but not upload the row-level data, use
Dataset$create(auto_upload=FALSE)

# followed by
Dataset$update()
Dataset$publish()

# When the source data changes and users need the latest data for analysis and reporting in
# MicroStrategy, mstrio allows you to update the previously created dataset.

ds <- Dataset$new(connection=conn, dataset_id="...")
ds$add_table(name = "Stores", data_frame = stores_df, update_policy = 'update')
ds$add_table(name = "Sales", data_frame = stores_df, update_policy = 'upsert')
ds$update()
ds$publish()

# By default, the raw data is transmitted to the server in increments of 25,000 rows. On very
# large datasets (>1 GB), it is beneficial to increase the number of rows transmitted to the
# Intelligence Server with each request. Do this with the chunksize parameter:

ds$update(chunksize = 500000)

# If you want to cerfify an existing dataset, use
ds$certify()
}
}
\section{Public fields}{
\if{html}{\out{<div class="r6-fields">}}
\describe{
\item{\code{connection}}{MicroStrategy connection object}

\item{\code{name}}{Name of the dataset}

\item{\code{description}}{Description of the dataset. Must be less than or equal to 250 characters}

\item{\code{dataset_id}}{Identifier of a pre-existing dataset. Used when updating a pre-existing dataset}

\item{\code{verbose}}{Print API requests to console. Used for debugging}
}
\if{html}{\out{</div>}}
}
\section{Active bindings}{
\if{html}{\out{<div class="r6-active-bindings">}}
\describe{
\item{\code{connection}}{MicroStrategy connection object}
}
\if{html}{\out{</div>}}
}
\section{Methods}{
\subsection{Public methods}{
\itemize{
\item \href{#method-new}{\code{Dataset$new()}}
\item \href{#method-add_table}{\code{Dataset$add_table()}}
\item \href{#method-create}{\code{Dataset$create()}}
\item \href{#method-update}{\code{Dataset$update()}}
\item \href{#method-publish}{\code{Dataset$publish()}}
\item \href{#method-publish_status}{\code{Dataset$publish_status()}}
\item \href{#method-delete}{\code{Dataset$delete()}}
\item \href{#method-certify}{\code{Dataset$certify()}}
\item \href{#method-clone}{\code{Dataset$clone()}}
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-new"></a>}}
\subsection{Method \code{new()}}{
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{Dataset$new(
  connection,
  name = NULL,
  description = NULL,
  dataset_id = NULL,
  verbose = FALSE
)}\if{html}{\out{</div>}}
}

}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-add_table"></a>}}
\subsection{Method \code{add_table()}}{
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{Dataset$add_table(
  name,
  data_frame,
  update_policy,
  to_metric = NULL,
  to_attribute = NULL
)}\if{html}{\out{</div>}}
}

}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-create"></a>}}
\subsection{Method \code{create()}}{
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{Dataset$create(folder_id = NULL, auto_upload = TRUE)}\if{html}{\out{</div>}}
}

}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-update"></a>}}
\subsection{Method \code{update()}}{
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{Dataset$update(chunksize = 1e+05)}\if{html}{\out{</div>}}
}

}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-publish"></a>}}
\subsection{Method \code{publish()}}{
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{Dataset$publish()}\if{html}{\out{</div>}}
}

}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-publish_status"></a>}}
\subsection{Method \code{publish_status()}}{
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{Dataset$publish_status()}\if{html}{\out{</div>}}
}

}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-delete"></a>}}
\subsection{Method \code{delete()}}{
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{Dataset$delete()}\if{html}{\out{</div>}}
}

}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-certify"></a>}}
\subsection{Method \code{certify()}}{
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{Dataset$certify()}\if{html}{\out{</div>}}
}

}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-clone"></a>}}
\subsection{Method \code{clone()}}{
The objects of this class are cloneable with this method.
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{Dataset$clone(deep = FALSE)}\if{html}{\out{</div>}}
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
