png("plot2.png", width=480, height=480)
with(tidy, plot(datetime, 
                Global_active_power, 
                type="l", 
                ylab="Global Activie Power (killowatts)"))
dev.off()

