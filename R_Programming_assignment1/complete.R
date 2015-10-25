complete <- function(directory, id = 1:332) {
    result <- data.frame(id = vector(mode="integer"), nobs = vector(mode="integer"))
    for (i in id) {
        tmp <- complete.cases(read.csv(sprintf("%s/%03d.csv", directory, i), TRUE));
        tmp <- tmp[tmp]
        result <- rbind(result, c(i, length(tmp)))
    }
    names(result) <- c("id", "nobs")
    result
}