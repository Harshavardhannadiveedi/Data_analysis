data<-c(10,20,30,40,50,60,70)
print(data)
mean_value=mean(data)
print(paste("Mean: ",mean_value))
median_value=median(data)
print(paste("Median: ",median_value))
mode_function<-function(x){
    uniq_values<-unique(x)
    uniq_values[which.max(tabulate(match(x,uniq_values)))]
}
mode_value<-mode_function(data)
print(paste("Mode :",mode_value))
print(paste("Maximum value :",max(data)))
print(paste("Minimum Value :",min(data)))
print(paste("Variance of data :",var(data)))
print(paste("Standard deviation :",sd(data)))
print(summary(data))
bp<-barplot(
    data,
    main="bar plot of data",
    xlab="xaxis",
    ylab="yaxis",
    col = "blue")
print(bp)
pc<-pie(
    data,
    main="Pie chart",
    col=c("Red","green","blue","yellow","brown","orange","gray")
)
print(pc)

hg<-hist(
    data,
    main="Histogram of data",
    xlab="xaxis",
    ylab="yaxis",
    col = "Red")
print(hg)