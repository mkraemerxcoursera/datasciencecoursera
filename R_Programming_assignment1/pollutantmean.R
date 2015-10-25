pollutantmean <- function(directory, pollutant, id = 1:332) {
    data <- vector(mode = "numeric")
    for (i in id) {
        tmp <- read.csv(sprintf("%s/%03d.csv", directory, i), TRUE)
        # select only column
        tmp <- tmp[pollutant]
        # filter by pollutant
        tmp <- tmp[!is.na(tmp[pollutant])]
        data <- c(data, tmp)
    }
    return (round(mean(data), 3))
}