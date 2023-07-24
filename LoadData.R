library(data.table)
library(lubridate)

# load data
dat <- read.csv('/Australia_thoroughbreds.csv')
dat <- as.data.table(dat)
dat[, meetingdate := ymd(dat[["meetingdate"]])]
dat[, birth_date := ymd(dat[["birth_date"]])]
str(dat, list.len=ncol(dat))