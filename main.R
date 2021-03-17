
LoadDataset <- function(fname) {
    colclasses <- c(
        "integer", "numeric", "numeric",
        "numeric", "integer", "factor", "numeric",
        "numeric", "integer", "numeric", "factor"
    )
    dataframe <- read.csv(fname, colClasses = colclasses)
    dataframe$explicit <- as.logical(dataframe$explicit)
    dataframe$mode <- as.logical(dataframe$mode)
    return(dataframe)
}
daf <- LoadDataset("dataset.csv")
