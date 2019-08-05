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
