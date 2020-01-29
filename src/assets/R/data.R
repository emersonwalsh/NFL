# install.packages("nflscrapR")
library(nflscrapR)

# make sure we're pointing to data folder
setwd("src/assets/data")

# static file of team info
write.csv2(nflteams, file = "./teams.csv", row.names = FALSE)

# start with BAL as our test
BAL_reg_pbp_19 <- scrape_season_play_by_play(2019, type = "reg", teams = "BAL")
write.csv2(BAL_reg_pbp_19, 
    file = "./BAL_reg_pbp_19.csv", 
    row.names = FALSE)
