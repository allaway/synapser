\name{EntityViewSchema}
\alias{EntityViewSchema}
\docType{methods}
\title{
Constructor for objects of type EntityViewSchema
}
\description{
A EntityViewSchema is a Entity that displays all files/projects (depending on user choice) within a given set of scopes
}
\usage{
EntityViewSchema(name=NULL, columns=NULL, parent=NULL, scopes=NULL, type=NULL, addDefaultViewColumns=TRUE, addAnnotationColumns=TRUE, ignoredAnnotationColumnNames=list(), properties=NULL, annotations=NULL)
}
\arguments{
\item{name}{ the name of the Entity View Table object\cr
}
\item{columns}{ a list of Column objects or their IDs. These are optional.\cr
}
\item{parent}{ the project in Synapse to which this table belongs\cr
}
\item{scopes}{ a list of Projects/Folders or their ids\cr
}
\item{type}{ the type of EntityView to display: either 'file','project' or 'file_and_table'. Defaults to 'file'.\cr
}
\item{addDefaultViewColumns}{ If true, adds all default columns (e.g. name, createdOn, modifiedBy etc.) Defaults to TRUE.\cr
 The default columns will be added after a call to synStore.\cr
}
\item{addAnnotationColumns}{ If true, adds columns for all annotation keys defined across all Entities in the EntityViewSchema's scope. Defaults to TRUE.\cr
 The annotation columns will be added after a call to synStore.\cr
}
\item{ignoredAnnotationColumnNames}{ A list of strings representing annotation names. When addAnnotationColumns is TRUE,\cr
                                    the names in this list will not be automatically added as columns to the EntityViewSchema\cr
                                    if they exist in any of the defined scopes.\cr
}
\item{properties}{      A map of Synapse properties\cr
}
\item{annotations}{     A map of user defined annotations\cr
}
}
\details{
% A detailed if possible precise description of the functionality provided, extending the basic information in the \description slot.
}
\value{
An object of type EntityViewSchema
}
\references{
% A section with references to the literature. Use \url{} or \href{}{} for web pointers.
}
\note{
% Use this for a special note you want to have pointed out. 
}
\seealso{
% Pointers to related R objects, using \code{\link{...}} to refer to them.
}
%
% Verified that the following works on 2018Jan23.
% 
\examples{
\dontrun{
project_or_folder <- synGet("syn123")  
schema <- EntityViewSchema(name='MyFileView', parent=project, scopes=c(project_or_folder$properties$id, 'syn456'), view_type='file')
schema <- synStore(schema)
}
}



