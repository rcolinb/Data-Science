#Read data
d1 <- read.csv(file="HW1/hw1_data.csv")

#Select specific rows
d1[1:2,]

d1[152:153,]

#Value of Ozone in specified row
d1$Ozone[47]

d1$Ozone

#Count missing values
sum(is.na(d1$Ozone))

#mean, excluding missing values
mean(d1$Ozone, na.rm = T)

#Subset data, ozone values above 31 and temp above 90
d2 <- d1[ which(d1$Ozone > 31 
                         & d1$Temp > 90), ]
mean(d2$Solar.R, na.rm = T)

d3 <- d1[ which(d1$Month == 6),]
mean(d3$Temp)

d4 <- d1[ which(d1$Month == 5),]
max(d4$Ozone, na.rm = T)
