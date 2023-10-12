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
#Q3_e
value_counts <- table(df_student$seat_comfort)
barplot(value_counts, main= "Comfort in the classroom's seating")
#Q3_f
plot(df_student$hr_online, df_student$hr_reading, main = "Online Hours vs Reading Hours", xlab = "Hours Spent Online", ylab = "Hours Spent Reading")
#Q3_g
hist(df_student$hr_online, main = "The number of hours people in spend online", xlab = "Hours spend online", ylab = "Students")
#Q3_i
