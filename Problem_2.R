## NOTE: readability: leave some blank linkes between the code to make it more readable

# (a)
xmin<-c(23.0, 20.5, 28.2, 20.3, 22.4, 17.2, 18.2)
xmin

xmax<-c(25.0, 22.8, 31.2, 27.3, 28.4, 20.2, 24.1)
xmax

# (b)

difference<-xmax-xmin
difference

dayNames <- c('Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat','Sun')
## NOTE: always insert a blank before and after <- 

names(difference) <- dayNames

difference[c('Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat','Sun')]

# (c)
avgMin <- mean(xmin)
avgMin

avgMax <- mean(xmax)
avgMax

# (d)
xmin < avgMin
minBelowAvg <- xmin < avgMin
minBelowAvg
dayNames [minBelowAvg]

# (e)
xmax > avgMax
maxAboveAvg <- xmax > avgMax
maxAboveAvg
dayNames [maxAboveAvg]

# (f)
names(xmin)<-dayNames
xmin[c('Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat','Sun')]
names(xmax)<-dayNames
xmax[c('Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat','Sun')]

# (g)
temperatures <- data.frame(
  df.xmin = xmin, 
  df.xmax = xmax
  )
temperatures
# (h)
temperatures <- within(temperatures, {
  xminFahrenheit <- df.xmin * 9/5 + 32
})
temperatures
# (i)
xminFahrenheit<-xmin * 9/5 + 32
xmaxFahrenheit<-xmax * 9/5 + 32
temperaturesFahr <- data.frame(
  df.xminFahrenheit = xminFahrenheit,
  df.xmaxFahrenheit = xmaxFahrenheit
)  
temperaturesFahr
# (j) i)

## NOTE: 
temeraturesFahr[1:5, ]
## returns a data frame so there is no need to create a new one!

tempMonFri1<-data.frame(temperaturesFahr[c(1: 5), ])
tempMonFri1
# (j) ii)
tempMonFri2<-data.frame(temperaturesFahr[-c(6, 7), ])
tempMonFri2
