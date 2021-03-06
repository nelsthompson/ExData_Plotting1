pwr <- read.csv("../household_power_consumption.txt", sep=";",
                colClasses = c("character"
                               ,"character"
                               ,"numeric"
                               ,"numeric"
                               ,"numeric"
                               ,"numeric"
                               ,"numeric"
                               ,"numeric"
                               ,"numeric")
               ,na.strings='?')
p1 <- pwr[as.Date(pwr$Date, format = "%d/%m/%Y") == "2007-02-01",]
p2 <- pwr[as.Date(pwr$Date, format = "%d/%m/%Y") == "2007-02-02",]
p <- rbind(p1, p2)
png(file = "plot1.png", width = 480, height = 480)
hist(as.numeric(p[,3]), col = "red", xlab = "Global Active Power (kilowatts)", main = "Global Active Power")
dev.off()
