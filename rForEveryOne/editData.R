download.file(url = "http://jaredlander.com/data/US_Foreign_Aid.zip", 
              destfile = "data/ForeignAid.zip")
unzip("data/ForeignAid.zip", exdir = 'data')
require(stringr)
theFiles <- dir("data/", pattern = "*.csv")
theFiles
for(a in theFiles){
  nameToUse <- str_sub(string = a, start = 12, end = 18)
  
  temp <- read.table(file=file.path("data", a),
                     header = T, sep = ",", stringsAsFactors = FALSE)
  assign(x=nameToUse, value = temp)
}

Aid90s00s <- merge(x=Aid_90s, y=Aid_00s,
                   by.x=c("Country.Name", "Program.Name"),
                   by.y=c("Country.Name", "Program.Name"))
head(Aid90s00s)

require(plyr)
Aid90s00sJoin <- join(x=Aid_90s, y=Aid_00s, by=c("Country.Name", "Program.Name"))
head(Aid90s00sJoin)

require(reshape2)
melt00 <- melt(Aid_00s, id.vars = c("Country.Name", "Program.Name"),
               variable.name = "Year", value.name = "Dollars")
tail(melt00, 10)
require(scales)
melt00$Year <- as.numeric(str_sub(melt00$Year, start = 3, 6))
melAgg <- aggregate(Dollars ~ Program.Name + Year, data = melt00,
                    sum, na.rm=TRUE)
melAgg$Program.Name <- str_sub(melAgg$Program.Name, start = 1, end = 10)
ggplot(melAgg, aes(x = Year, y=Dollars)) +
  geom_line(aes(group = Program.Name)) +
  facet_wrap(~ Program.Name) +
  scale_x_continuous(breaks = seq(from=2000, to=2009, by=2)) +
  theme(axis.text.x = element_text(angle = 90, vjust = 1, hjust = 0)) 








require(XML)
load("data/presidents.rdata")
theUrl <- "http://www.loc.gov/rr/print/list/057_chron.html"
presidents <- readHTMLTable(theUrl, which = 3, as.data.frame = TRUE,
                            skip.rows = 1, header = TRUE,
                            stringsAsFactors=FALSE)
tail(presidents)

presidents <- presidents[1:65, ]


require(stringr)
yearList <- str_split(string = presidents$YEAR, pattern = "-")
head(yearList)

yearMatrix <- data.frame(Reduce(rbind, yearList))
tail(presidents$YEAR)
head(yearMatrix)
names(yearMatrix) <- c("Start", "Stop")
presidents <- cbind(presidents, yearMatrix)
presidents$Start <- as.numeric(as.character(presidents$Start))
presidents$Stop <- as.numeric(as.character(presidents$Stop))
head(presidents)
tail(presidents)

#regex
library(stringr)
install.packages("stringr")
johnPos <- str_detect(string = presidents$PRESIDENT, pattern = "John")
presidents[johnPos, c("YEAR", "PRESIDENT", "Start", "Stop")]
badSearch <- str_detect(presidents$PRESIDENT, "john")

goodSearch <- str_detect(presidents$PRESIDENT, ignore.case("John"))
str_detect(presidents$PRESIDENT, ignore.case("john") )
