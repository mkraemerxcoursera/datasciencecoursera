corr <- function(directory, threshold = 0) {
    id = 1:332
    result <- vector(mode="integer")
    for (i in id) {
        all <- read.csv(sprintf("%s/%03d.csv", directory, i), TRUE)
        filter <- complete.cases(all)
        num <- length(filter[filter])
        if (num <= threshold) {
            next
        }
        result <- rbind(result, cor(all$sulfate, all$nitrate, use = "complete"))
        #result <- rbind(result, c(i, length(tmp)))
    }
    #names(result) <- c("id", "nobs")
    result
}