#Life expectancy in France
dat=read.csv("/Users/ashtonperez/Desktop/MAth Modeling Data Sets/LifeExpenctancyWorldBank2018clean.csv",
             header=TRUE)
dat[1:3,1:5] # this gives rows 1 - 3 and columns 1 - 5

#Country.Name Country.Code X1960 X1961 X1962
#ABW 65.662 66.074 66.444
#AFG 32.292 32.742 33.185
#AGO 33.251 33.573 33.914

dim(dat) #this gives the dimensions of the entire data set, 264 rows and 60 columns
#[1] 264 60 #data from 1960 to 2017, 58 years dat[1:5,55:60]

which(dat== "France") #this searched the data for specific character and returns a row
#[1] 76
dat[76,1:5] #returns row 76 and columns 1 - 5
# Country.Name Country.Code X1960 X1961 X1962
#76 France FRA 69.86829 70.11707 70.31463 yr=1960:1989

yr=1960:1989 #returnd a sequence from 1960 to 1989
yr

le=dat[76,3:32] #returns data from row 76 and columns 3 to 32
le
plot(le)

ler=as.numeric(le) #I think this returns the numeric values from a data set
ler
par(mar=c(4.5,4.5,2,1.5)) #this sets the parameters for the graph ahead of time to adjust fitting
plot(yr, ler, ylim=c(70,77),
     xlab="Time", ylab="Life Expectancy",
     main="Life Expectancy in France", cex.main=1.5,
     cex.lab=1.5, cex.axis=1.5)
lm(ler ~ yr) #lm function finds the linear regression by returning the intercept and slope
#(Intercept) yr
#-367.9487 0.2233
abline(lm(ler ~ yr), col="blue", lwd=2)
#abline function plots the regression line
text(1968,76, "Trend=0.2233 per year", cex=1.5, col="blue")

segments(1970,-367.9487+0.2333*1971,1980,-367.9487+0.2233*1980, lwd=5)

