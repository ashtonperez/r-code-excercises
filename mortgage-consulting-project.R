### R code for Chapter 4 Project
### initial amount 300k, r=3.5% annual, n=360 months
p=300000 #principal
r=.035/12 #monthly rate
n=30*12 #months in term
x=p*r*(1+r)^n/((1+r)^n-1) #monthly payment equation
x #monthly payment
# $1347.134

### different interest rates:
p=300000 
r=seq(.03,.04, length=5)/12
n=30*12 
MP=p*r*(1+r)^n/((1+r)^n-1)
MonthlyPayment=round(MP,2)
Rates=seq(3.0,4.0, length =5)
cbind(Rates,MonthlyPayment)
#      Rates MonthlyPayment
#[1,]  3.00        1264.81
#[2,]  3.25        1305.62
#[3,]  3.50        1347.13
#[4,]  3.75        1389.35
#[5,]  4.00        1432.25

###### different term lengths:
p=300000 
r=.035/12
n=seq(15,30, length=2)*12 
MP=p*r*(1+r)^n/((1+r)^n-1) 
MonthlyPayment=round(MP,2)
years=seq(15,30, length =2)
cbind(years,MonthlyPayment)
#years      MonthlyPayment
#[1,]    15 2144.65
#[2,]    30 1347.13


###### different loan amounts
p=seq(150000,350000,length=5) 
r=.035/12
n=30*12 
MP=p*r*(1+r)^n/((1+r)^n-1)
MonthlyPayment=round(MP,2)
LoanAmount=seq(150000,350000,length=5)
cbind(LoanAmount,MonthlyPayment)

#LoanAmount      MonthlyPayment
#[1,]     150000  673.57
#[2,]     200000  898.09
#[3,]     250000 1122.61
#[4,]     300000 1347.13
#[5,]     350000 1571.66


#### How total amount paid is effected with loan amount
p=seq(150000,350000,length=5) 
r=.035/12
n=30*12 
MP=p*r*(1+r)^n/((1+r)^n-1)
MonthlyPayment=round(MP,2)
LoanAmount=seq(150000,350000,length=5)
TotalPaid=MonthlyPayment*n
InterestPaid=TotalPaid-p
InterestPercent=(InterestPaid/TotalPaid)*100
PercentToInterest=round(InterestPercent,2)
PaymentPercent= (1- (PercentToInterest/100))*100
PercenttoPayment=round(PaymentPercent,2)
cbind(LoanAmount,MonthlyPayment,TotalPaid,InterestPaid,PercenttoPayment,PercentToInterest)

#LoanAmount MonthlyPayment TotalPaid InterestPaid PercenttoPayment #PercentToInterest
#[1,]     150000         673.57  242485.2      92485.2            61.86             38.14
#[2,]     200000         898.09  323312.4     123312.4            61.86             38.14
#[3,]     250000        1122.61  404139.6     154139.6            61.86             38.14
#[4,]     300000        1347.13  484966.8     184966.8            61.86             38.14
#[5,]     350000        1571.66  565797.6     215797.6            61.86             38.14

####### How total amount paid is effected with term length
p=300000 
r=.035/12
n=seq(15,30, length=2)*12 
MP=p*r*(1+r)^n/((1+r)^n-1)
MonthlyPayment=round(MP,2) 
TermLength=seq(15,30,length=2)
TotalPaid=MonthlyPayment*n
InterestPaid=TotalPaid-p
InterestPercent=(InterestPaid/TotalPaid)*100
PercentToInterest=round(InterestPercent,2)
PaymentPercent= (1- (PercentToInterest/100))*100
PercenttoPayment=round(PaymentPercent,2)
cbind(TermLength,MonthlyPayment,TotalPaid,InterestPaid,PercenttoPayment, PercentToInterest)

#       TermLength MonthlyPayment TotalPaid InterestPaid PercenttoPayment PercentToInterest
#[1,]         15        2144.65  386037.0      86037.0            77.71             22.29
#[2,]         30        1347.13  484966.8     184966.8            61.86             38.14

######## How total amount paid is effected with interest Rate
p=300000 
r=seq(.03,.04, length=5)/12
n=30*12 
MP=p*r*(1+r)^n/((1+r)^n-1)
MonthlyPayment=round(MP,2)
TotalPaid=MonthlyPayment*n
InterestPaid=TotalPaid-p
InterestPercent=(InterestPaid/TotalPaid)*100
PercentToInterest=round(InterestPercent,2)
PaymentPercent= (1- (PercentToInterest/100))*100
PercenttoPayment=round(PaymentPercent,2)
Rate=seq(3.0,4.0,length=5)
cbind(Rate,MonthlyPayment,TotalPaid,InterestPaid,PercenttoPayment,PercentToInterest)

#Rate MonthlyPayment TotalPaid InterestPaid PercenttoPayment PercentToInterest
#[1,] 3.00        1264.81  455331.6     155331.6            65.89             34.11
#[2,] 3.25        1305.62  470023.2     170023.2            63.83             36.17
#[3,] 3.50        1347.13  484966.8     184966.8            61.86             38.14
#[4,] 3.75        1389.35  500166.0     200166.0            59.98             40.02
#[5,] 4.00        1432.25  515610.0     215610.0            58.18             41.82


###########15 and 30 year loan at 3%, then 15 and 30 year loan at 5%
p=300000 
r=.03/12
n=seq(15,30, length=2)*12 
MP=p*r*(1+r)^n/((1+r)^n-1)
Monthly=round(MP,2) 
Term=seq(15,30,length=2)
Total=Monthly*n
InterestPaid=Total-p
InterestPercent=(InterestPaid/Total)*100
PercentToInterest=round(InterestPercent,2)
PaymentPercent= (1- (PercentToInterest/100))*100
PercenttoPayment=round(PaymentPercent,2)
cbind(Term,Monthly,Total,InterestPaid,PercentToInterest,PercenttoPayment)
########15 and 30 at 3% interest
#Term Monthly    Total InterestPaid PercentToInterest PercenttoPayment
#[1,]   15 2071.74 372913.2      72913.2             19.55            80.45
#[2,]   30 1264.81 455331.6     155331.6             34.11            65.89

########15 and 30 year at 5% interest
#     Term Monthly    Total InterestPaid PercentToInterest PercenttoPayment
#[1,]   15 2372.38 427028.4     127028.4             29.75            70.25
#[2,]   30 1610.46 579765.6     279765.6             48.25            51.75

#####15 years, 3% interest Pie Chart ######
fifteenyearPayPercent=80.45
fifteenyearPatInterest=19.55
Pie=c(fifteenyearPayPercent,fifteenyearPatInterest)
pie(Pie,main="15 Year Loan at 3% Annual Interest",
    col=rainbow(length(Pie)),labels=c(fifteenyearPayPercent,fifteenyearPatInterest))
legend("topright" ,c("Percent Going to Payment","Percent Going to Interest"), cex=0.7, fill =
         rainbow(length(Pie)))
box()
#####30 years, 3% Pie Chart ######
thirtyyearPayPercent=65.89
thirtyyearPatInterest=34.11
Pie=c(thirtyyearPayPercent,thirtyyearPatInterest)
pie(Pie,main="30 Year Loan at 3% Annual Interest",
    col=rainbow(length(Pie)),labels=c(thirtyyearPayPercent,thirtyyearPatInterest))
legend("topright" ,c("Percent Going to Payment","Percent Going to Interest"), cex=0.9, fill =
         rainbow(length(Pie)))
box()

#####15 years, 5% interest Pie Chart ######
Fifteernat5Pay=70.25
Fifteenat5Int=29.75
Pie=c(Fifteernat5Pay,Fifteenat5Int)
pie(Pie,main="15 Year Loan at 5% Annual Interest",
    col=rainbow(length(Pie)),labels=c(Fifteernat5Pay,Fifteenat5Int))
legend("topright" ,c("Percent Going to Payment","Percent Going to Interest"), cex=0.9, fill =
         rainbow(length(Pie)))
box()
#####30 years, 5% Pie Chart ######
thirtyat5Pay=51.75
thirtyat5Int=48.25
Pie=c(thirtyat5Pay,thirtyat5Int)
pie(Pie,main="30 Year Loan at 5% Annual Interest",
    col=rainbow(length(Pie)),labels=c(thirtyat5Pay,thirtyat5Int))
legend("topright" ,c("Percent Going to Payment","Percent Going to Interest"), cex=0.9, fill =
         rainbow(length(Pie)))
box()
####!!!output images of pie charts are located in the report

