# ExData_plotting1-
## Intro
This assignment uses data from the UC Irvine Machine Learning Repository, a popular repository for machine learning datasets. In particular, we will be using the "Individual household electric power consumption Data Set" which I have made available on the course web site:

Dataset: Electric power consumption [20Mb]

Description: Measurements of electric power consumption in one household with a one-minute sampling rate over a period of almost 4 years. Different electrical quantities and some sub-metering values are available.

The following descriptions of the 9 variables in the dataset are taken from the UCI web site:

1)Date: Date in format dd/mm/yyyy<br/>2)Time: time in format hh:mm:ss<br/>3)Global_active_power: household global minute-averaged active power (in kilowatt)<br/>4)Global_reactive_power: household global minute-averaged reactive power (in kilowatt)
<br/>5)Voltage: minute-averaged voltage (in volt)
<br/>6)Global_intensity: household global minute-averaged current intensity (in ampere)
<br/>7)Sub_metering_1: energy sub-metering No. 1 (in watt-hour of active energy). It corresponds to the kitchen, containing mainly a dishwasher, an oven and a microwave (hot plates are not electric but gas powered).
<br/>8)Sub_metering_2: energy sub-metering No. 2 (in watt-hour of active energy). It corresponds to the laundry room, containing a washing-machine, a tumble-drier, a refrigerator and a light.
<br/>9)Sub_metering_3: energy sub-metering No. 3 (in watt-hour of active energy). It corresponds to an electric water-heater and an air-conditioner.

## Loading the data
When loading the dataset into R, please consider the following:

The dataset has 2,075,259 rows and 9 columns. First calculate a rough estimate of how much memory the dataset will require in memory before reading into R. Make sure your computer has enough memory (most modern computers should be fine).

We will only be using data from the dates 2007-02-01 and 2007-02-02. One alternative is to read the data from just those dates rather than reading in the entire dataset and subsetting to those dates.

You may find it useful to convert the Date and Time variables to Date/Time classes in R using the strptime() and as.Date() functions.

Note that in this dataset missing values are coded as ?.

## Plots 
1> <br/>
![plot2](https://user-images.githubusercontent.com/32876600/128115326-6c7fc411-7f6e-4abf-909a-c24f7542b7ce.png)<br/>
2> <br/>
![plot1](https://user-images.githubusercontent.com/32876600/128115317-9b96542d-ea97-401b-ab86-e1d20c60138b.png) <br/>
3><br/>
![plot3](https://user-images.githubusercontent.com/32876600/128115338-4b0b35a3-3cef-4ec5-94e7-fe63d301e8c2.png)<br/>
4> <br/>
![plot4](https://user-images.githubusercontent.com/32876600/128115344-39a70239-5c68-41fb-a3e0-070e21752b99.png)
