#Obtaining Dataset from Yahoo
install.packages("quantmod")
library(quantmod)

getSymbols("NFLX", from = "2016-1-1", to = "2020-1-1", auto.assign = TRUE)
getSymbols("DIS", from = "2016-1-1", to = "2020-1-1", auto.assign = TRUE)

closingpriceNFLX <- NFLX$NFLX.Close
ts.plot(closingpriceNFLX)

closingpriceDIS <- DIS$DIS.Close
ts.plot(closingpriceDIS)




