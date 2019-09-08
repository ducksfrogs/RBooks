person <- "Jared"
partySize <- "eight"
waitTime <- 25


sprintf("Hello %s, your party of %s, will be seated in %s minuts",
        c("Jared", "Bob"), c("egght", 16, "fore", 10), waitTime)
require(XML)
load("data/presidents.rdata")
theUrl <- "http://www.loc.gov/rr/print/list/057_chron.html"
presidents <- readHTMLTable(theUrl, which = 3, as.data.frame = TRUE,
                            skip.rows = 1, header = TRUE,
                            stringsAsFactors=FALSE)
head(presidents)
tail(presidents$YEAR)
require(stringr)
yearList <- str_split(string = presidents$YEAR, pattern = "-")
yearMatrix <- data.frame(Reduce(rbind, yearList))
names(yearMatrix) <- c("Start", "Stop")
presidents <- cbind(presidents ,yearMatrix)

head(presidents)
tail(presidents)

