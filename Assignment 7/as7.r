## Correlation And Simple regression Analysis


#attach file 
data= read.csv(file.choose(),header = TRUE,sep="\t")
#Give the name of heading
names(Salary_Data)
#show 1st 5 data in csv
head(data)
#Show last 5 data in csv 
tail(data)

x=data$Total_Accidents
y=data$Minor_Injury_Accidents
plot(x,y)
plot(x,y,ylab = "Minor_Injury_Accidents",xlab = "Total_Accidents")
#
abline(lm(y~x))

#corelation

cor(y,x)

model = lm(y~x)
model

summary(x)

summary(model)
