library(scales)

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

summary(daf$pop.class)
pop_class_table <- table(daf$pop.class)
print(label_percent()(c(pop_class_table) / sum(pop_class_table)), quote = FALSE)
pie(pop_class_table, col = rainbow(length(pop_class_table)))