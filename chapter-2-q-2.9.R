#Choose two 5x5 degree lat-lon grid boxes of your interest.
#Plot the temperature anomaly time series of the two boxes 
#on the same figure using two different colors.

dat=read.csv("/Users/ashtonperez/Desktop/MAth Modeling Data Sets/NOAAGlobalT.csv",
          header=TRUE)
#test data
dim(dat) #2592 Rows and 1648 columns
1648/12

###output of which is location
which(dat[,2] > 40 & dat[,2] < 43 & dat[,3] > 263 & dat[,3] < 272)  #this gives me 1891
iowa  = which(dat[,2]>40 & dat[,2]<43 & dat[,3]>263 & dat[,3]<272)
iowa
idat=dat[iowa,]
idat #gives us all the row values of 1891 
idat[2:7]
length(idat)
idat[1641:1648]
t1=seq(1880,2017,length=1645)
y1=idat[4:1648]
length(t1)
length(y1)
plot(t1,y1, type='o', xlab='YEAR', ylab= 'TEMP')
lines(t1,y1, col = "red")
##to put on the same figure use line(x,y)

which(dat[,2] > 35 & dat[,2] < 39 & dat[,3] > 100 & dat[,3] < 105)  #this gives me 1891
china  = which(dat[,2]>35 & dat[,2]<39 & dat[,3]>100 & dat[,3]<105)
china
chinadat=dat[china,]
chinadat #gives us all the row values of 1891 
chinadat[2:7]
c1=seq(1880,2017,length=1645)
a1=idat[4:1648]
length(c1)
length(a1)
lines(c1,a1, col = "purple", lty=2) #lty = diff line

