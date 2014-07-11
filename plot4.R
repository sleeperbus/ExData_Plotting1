png("plot4.png", width=480, height=480)
par(mfrow=c(2,2))
# (1,1)
with(tidy, plot(datetime, 
                Global_active_power, 
                type="l", 
                ylab="Global Activie Power (killowatts)"))

# (1,2)
with(tidy, plot(datetime, 
                Voltage, 
                type="l", 
                ylab="Voltage", xlab="datetime"))

# (2,1)
with(tidy, plot(datetime, Sub_metering_1, type="n", ylab="Energy sub metering"))
with(tidy, lines(datetime, Sub_metering_1, col="black"))
with(tidy, lines(datetime, Sub_metering_2, col="red"))
with(tidy, lines(datetime, Sub_metering_3, col="blue"))
legend("topright", 
       pch = "-",
       col = c("black", "red", "blue"), 
       legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))

# (2,2)
# (1,2)
with(tidy, plot(datetime, 
                Global_reactive_power, 
                type="l", 
                ylab="Global_reactive_power", xlab="datetime"))

dev.off()