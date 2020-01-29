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

# load in the rest
write.csv2(scrape_season_play_by_play(2019, type="reg", teams = "ARI"),
    file = "./ARI_reg_pbp_19.csv", row.names = FALSE)

write.csv2(scrape_season_play_by_play(2019, type="reg", teams = "ATL"),
    file = "./ATL_reg_pbp_19.csv", row.names = FALSE)

write.csv2(scrape_season_play_by_play(2019, type="reg", teams = "BUF"),
    file = "./BUF_reg_pbp_19.csv", row.names = FALSE)

write.csv2(scrape_season_play_by_play(2019, type="reg", teams = "CAR"),
    file = "./CAR_reg_pbp_19.csv", row.names = FALSE)

write.csv2(scrape_season_play_by_play(2019, type="reg", teams = "CHI"),
    file = "./CHI_reg_pbp_19.csv", row.names = FALSE)

write.csv2(scrape_season_play_by_play(2019, type="reg", teams = "CIN"),
    file = "./CIN_reg_pbp_19.csv", row.names = FALSE)

write.csv2(scrape_season_play_by_play(2019, type="reg", teams = "CLE"),
    file = "./CLE_reg_pbp_19.csv", row.names = FALSE)

write.csv2(scrape_season_play_by_play(2019, type="reg", teams = "DAL"),
    file = "./DAL_reg_pbp_19.csv", row.names = FALSE)

write.csv2(scrape_season_play_by_play(2019, type="reg", teams = "DEN"),
    file = "./DEN_reg_pbp_19.csv", row.names = FALSE)

write.csv2(scrape_season_play_by_play(2019, type="reg", teams = "DET"),
    file = "./DET_reg_pbp_19.csv", row.names = FALSE)

write.csv2(scrape_season_play_by_play(2019, type="reg", teams = "GB"),
    file = "./GB_reg_pbp_19.csv", row.names = FALSE)

# below here still needs to be run
write.csv2(scrape_season_play_by_play(2019, type="reg", teams = "HOU"),
    file = "./HOU_reg_pbp_19.csv", row.names = FALSE)

write.csv2(scrape_season_play_by_play(2019, type="reg", teams = "IND"),
    file = "./IND_reg_pbp_19.csv", row.names = FALSE)

write.csv2(scrape_season_play_by_play(2019, type="reg", teams = "JAC"),
    file = "./JAC_reg_pbp_19.csv", row.names = FALSE)

write.csv2(scrape_season_play_by_play(2019, type="reg", teams = "KC"),
    file = "./KC_reg_pbp_19.csv", row.names = FALSE)

write.csv2(scrape_season_play_by_play(2019, type="reg", teams = "MIA"),
    file = "./MIA_reg_pbp_19.csv", row.names = FALSE)

write.csv2(scrape_season_play_by_play(2019, type="reg", teams = "MIN"),
    file = "./MIN_reg_pbp_19.csv", row.names = FALSE)

write.csv2(scrape_season_play_by_play(2019, type="reg", teams = "NE"),
    file = "./NE_reg_pbp_19.csv", row.names = FALSE)

write.csv2(scrape_season_play_by_play(2019, type="reg", teams = "NO"),
    file = "./NO_reg_pbp_19.csv", row.names = FALSE)

write.csv2(scrape_season_play_by_play(2019, type="reg", teams = "NYG"),
    file = "./NYG_reg_pbp_19.csv", row.names = FALSE)

write.csv2(scrape_season_play_by_play(2019, type="reg", teams = "NYJ"),
    file = "./NYJ_reg_pbp_19.csv", row.names = FALSE)

write.csv2(scrape_season_play_by_play(2019, type="reg", teams = "OAK"),
    file = "./OAK_reg_pbp_19.csv", row.names = FALSE)

write.csv2(scrape_season_play_by_play(2019, type="reg", teams = "PHI"),
    file = "./PHI_reg_pbp_19.csv", row.names = FALSE)

write.csv2(scrape_season_play_by_play(2019, type="reg", teams = "PIT"),
    file = "./PIT_reg_pbp_19.csv", row.names = FALSE)

write.csv2(scrape_season_play_by_play(2019, type="reg", teams = "SEA"),
    file = "./SEA_reg_pbp_19.csv", row.names = FALSE)

write.csv2(scrape_season_play_by_play(2019, type="reg", teams = "SF"),
    file = "./SF_reg_pbp_19.csv", row.names = FALSE)

write.csv2(scrape_season_play_by_play(2019, type="reg", teams = "TB"),
    file = "./TB_reg_pbp_19.csv", row.names = FALSE)

write.csv2(scrape_season_play_by_play(2019, type="reg", teams = "TEN"),
    file = "./TEN_reg_pbp_19.csv", row.names = FALSE)

write.csv2(scrape_season_play_by_play(2019, type="reg", teams = "WAS"),
    file = "./WAS_reg_pbp_19.csv", row.names = FALSE)

write.csv2(scrape_season_play_by_play(2019, type="reg", teams = "JAX"),
    file = "./JAX_reg_pbp_19.csv", row.names = FALSE)

write.csv2(scrape_season_play_by_play(2019, type="reg", teams = "LAC"),
    file = "./LAC_reg_pbp_19.csv", row.names = FALSE)

write.csv2(scrape_season_play_by_play(2019, type="reg", teams = "LAR"),
    file = "./LAR_reg_pbp_19.csv", row.names = FALSE)
