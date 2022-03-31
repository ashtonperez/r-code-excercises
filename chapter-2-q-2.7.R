#Use R to plot Cuyamaca January Tmin temps from 1951-2010 with a continuous curve

# Must run Rstudio from a project thats relative to this script
ds = paste(getwd(), "/csv/CA042239T.csv", sep="")

dat=read.csv(ds,
             header=FALSE)
dim(dat) #gives the rows x columns
dat[1:3,] 
y=dat[770:1489,6]
y
y[1:5]
t=matrix(y,ncol=12, byrow=TRUE)
t
z=t[,1]
z
x=seq(1951,2010, length=60)
x
plot(x,z, type='o', col='blue',xlab='YEAR', ylab='TEMP', main='January Minimum Temp')

# create linear trend lines for each decade 51,61,71 and 81
lm(z~x) #linear regression. 0.0647 per year
abline(lm(z ~ x), lwd=2, col="red") #Regression line

t6110=seq(1961,2010, len=50)
dat6110=z[11:60]
reg6110 = lm(dat6110 ~ t6110)
predict(reg6110)[1] #
segments(1951, predict(reg6110)[1], 2010, predict(reg6110)[60], col="yellow", lwd=2)
segments(1961, predict(reg6110)[1], 2010, predict(reg6110)[50], col="black", lwd=2)
segments(1971, predict(reg6110)[1], 2010, predict(reg6110)[40], col="purple", lwd=2)
segments(1981, predict(reg6110)[1], 2010, predict(reg6110)[30], col="orange", lwd=2)


#what is the temporal trend per decade for each of the four periods above?

