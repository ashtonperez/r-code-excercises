#use R to arrange the months Cuyamaca Tmax from Januarly to 1961 to December 1990 as 
# matrix with each row as year and each column as month

# Must run Rstudio from a project thats relative to this script
ds = paste(getwd(), "/csv/CA042239T.csv", sep="")

#Max Temperature
dat=read.csv(ds,
             header=TRUE)


Tmax=dat[889:1248, 4]
Tmax
x=seq(1961,1990)
x
t=matrix(Tmax,nrow=30,ncol=12, byrow=TRUE)
t

#Mean Temperature
Tmean=dat[889:1248, 5]
Tmean
r=matrix(Tmean, nrow=30, ncol=12, byrow=TRUE)
r

#Min Temperature
Tmin=dat[889:1248, 6]
Tmin
d=matrix(Tmin, nrow=30, ncol=12, byrow=TRUE)
d

