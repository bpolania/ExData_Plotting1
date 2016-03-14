## Plot 1
# Global Active Power Histogram

# Read file and format Date and Time to DateTime
powerConsumption <- read.table("./household_power_consumption.txt", sep=";", header = TRUE, na.strings = "?", stringsAsFactors = FALSE)
powerConsumption$DateTime <- as.POSIXct(powerConsumption$DateTime, format = "%d/%m/%Y %H:%M:%S")

# Subset of the (powerConsumption) data for specified dates
subset <- filter(powerConsumption, DateTime >= as.POSIXct("2007-02-01 00:00:00"), DateTime < as.POSIXct("2007-02-03 00:00:00"))

# Create Plot
hist(subset$Global_active_power, main = "Global Active Power", xlab = "Global Active Power (kilowatts)", col = "red")
dev.copy(png,"plot1.png")

# Create .png file
dev.off()
