png("plot3.png", width=480, height=480)
with(tidy, plot(datetime, Sub_metering_1, type="n", ylab="Energy sub metering"))
with(tidy, lines(datetime, Sub_metering_1, col="black"))
with(tidy, lines(datetime, Sub_metering_2, col="red"))
with(tidy, lines(datetime, Sub_metering_3, col="blue"))
legend("topright", 
       pch = "-",
       col = c("black", "red", "blue"), 
       legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))
dev.off()
