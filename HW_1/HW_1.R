get_physical_transport <- function(transportation) {
  return(transportation == "Walking" | transportation == "Bike")
}
data$physical_transport <- get_physical_transport(data$transportation)

true_count = sum(data$physical_transport)

# create a data frame
pie_data <- data.frame(Count = c(true_count, false_count))
row.names(pie_data) <- c("TRUE", "FALSE")

pie(pie_data$Count, labels = row.names(pie_data), main = "physical transport")
# Q2-f
boxplot(bmi ~ status, data=data, main="BMI vs Status")

#Q3_a
df_student<-read_csv("./student-data.csv")
ncol(df_student)
nrow(df_student)
#Q3_b
str(df_student)
#Q3_c
