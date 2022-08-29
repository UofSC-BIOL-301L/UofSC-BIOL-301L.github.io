# Read in the data
library(readxl)
fname <- "~/../Onedrive/Documents/UofSC/Classes/Fall 2022/2022_03_Fall_301_Student-Roster.xlsx"
student_roster <- read_xlsx(fname)

# Trim to remove names
student_roster <- student_roster[,-c(2:4)]

# save to data
# note that working directory is in gitclones
saveRDS(student_roster,
        file = './2022_Fall_Intro-email-analysis/data/2022_Fall_intro-resp.rds')