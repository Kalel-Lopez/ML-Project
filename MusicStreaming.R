#Obtaining Dataset from Yahoo
install.packages("quantmod")
library(quantmod)

getSymbols("SPOT", from = "2016-1-1", to = "2020-1-1", auto.assign = TRUE)
getSymbols("SIRI", from = "2016-1-1", to = "2020-1-1", auto.assign = TRUE)

closingpriceSPOT <- SPOT$SPOT.Close
closingpriceSIRI <- SIRI$SIRI.Close

ts.plot(closingpriceSPOT)
ts.plot(closingpriceSIRI)
