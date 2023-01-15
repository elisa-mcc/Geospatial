# Create a df for each municipality with the monthly average level of pm10 and pm2.5

## This is the script used to create the pm10 level datasets, some changes need to be made to create the pm2.5 datasets

#download the data from: https://www.arpalombardia.it/Pages/Aria/Richiesta-Dati.aspx --> Rircerca stime comunali
#read csv 
df1 <- read.csv("*****")

#see the name of the municipality
colnames(df1)           

df2 <- read.csv("*****",header = TRUE, sep = ",", skip = 2) 

#remove -999 values in PM10...µg.m.
df <- df2[df2$PM10...µg.m. > 0,]

#convert Data.Ora
df$Data.Ora <- as.Date(df$Data.Ora, format =  "%Y/%m/%d")

#get months
df$Month <- months(df$Data.Ora)

#aggregate PM10...µg.m. on months and get mean
comune_bs <- aggregate( PM10...µg.m. ~ Month , df , mean )

#add name of the municipality
comune_bs$COMUNE <- "name of municipality"

#save the file
write.csv(x = comune_bs, file = paste(comune_bs$COMUNE[1],".csv",  sep = ""))


######################################################

## Create an unique file with all the value of pm10 on average of each municipalities (from January to December 2020)

#get all the file of municipalities
file_names <- list.files("*****")

tot_comuni <- data.frame(X = integer(),
                         Month = character(),
                         PM10...µg.m. = numeric(),
                         COMUNE = character())

library("plyr")

#Create data set with all data
for(i in 1:length(file_names)) {     
  
  data_i <- read.csv(paste0("*****", file_names[i]))
  tot_comuni <- rbind.fill(tot_comuni, data_i)
  }

pm10_comuni_bs <- tot_comuni[, c("Month", "PM10...µg.m.", "COMUNE")]

# save dataset
write.csv(x = pm10_comuni_bs, file = "pm10_comuni_brescia.csv")



