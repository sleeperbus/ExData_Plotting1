    Sys.setlocale(category="LC_TIME", locale="C")
    data <- read.table("household_power_consumption.txt",  header=TRUE, sep=";" ,
                       stringsAsFactors=FALSE) 
    # change column attributes
    data <- transform(data, Date = as.Date(Date, "%d/%m/%Y"))
    # subset just needed
    tidy <- subset(data, Date == as.Date("2007-02-01") | 
                      Date == as.Date("2007-02-02"))
    # add new columns
    tidy <- transform(tidy, datetime = strptime(paste(Date, Time), "%Y-%m-%d %X"))
    tidy <- transform(tidy, day = format(datetime, "%a"))
    
    # change column attribute
    tidy<- transform(tidy, Global_active_power = as.numeric(Global_active_power), 
                      Global_reactive_power = as.numeric(Global_reactive_power))
    # make plot
    png("plot1.png", width=480, height=480)
    hist(tidy$Global_active_power, col="red", main="Global Active Power", 
         xlab="Global Active Power (kilowatts")
    dev.off()
