#LA county health code violations

library(tidyverse)
library(lubridate)
library(tibble)
library(tidyr)
library(readr)
install.packages("purrr")
library(purrr)
library(dplyr)
library(stringr)
library(forcats)
install.packages("openair")
library(openair)

#set the working directory
setwd("C:/Users/rafsan bhuiyan/Documents/CTU SEMESTER JULY TO SEP 2019/Foundation of Big Data Analytics/Unit 2")

#read inspection file
inspections <- read.csv("inspections.csv", header = TRUE)

#read violations file
violations <- read.csv("violations.csv", header = TRUE)

#merge two datasets by serial_number
merged <- merge(inspections, violations, by = "serial_number")

#Peek merged dataset
head(merged)

#changed merged dataset using mutate
merged <- merged %>%
  mutate(activity_date = as.Date(activity_date, format("%m/%d/%Y")))

#Peek dataset
head(merged)

# Chain methods together for month of January

finalResults <- merged %>%
  select(activity_date,serial_number, employee_id,
         facility_address,facility_city, facility_id,
         facility_name, facility_state, facility_zip,
         grade, owner_id, owner_name, pe_description, 
         program_element_pe, program_name, program_status,
         record_id, score, service_code, service_description,
         points, violation_code, violation_description,
         violation_status) %>%
  filter(months(activity_date) == "January") %>%
  #group_by(months(merged$activity_date)) %>%
  #arrange(desc(months(merged$activity_date) == "January")) %>%
  as.data.frame()

#Peek
head(finalResults)

# Save the results to a CSV file
write.csv(
  x = finalResults,
  file = "januaryLAFoodAnalytics.csv",
  row.names = FALSE)

# Chain methods together for month of February

finalResults <- merged %>%
  select(activity_date,serial_number, employee_id,
         facility_address,facility_city, facility_id,
         facility_name, facility_state, facility_zip,
         grade, owner_id, owner_name, pe_description, 
         program_element_pe, program_name, program_status,
         record_id, score, service_code, service_description,
         points, violation_code, violation_description,
         violation_status) %>%
  filter(months(activity_date) == "February") %>%
  as.data.frame()

#Peek
head(finalResults)

# Save the results to a CSV file
write.csv(
  x = finalResults,
  file = "februaryLAFoodAnalytics.csv",
  row.names = FALSE)

# Chain methods together for month of March

finalResults <- merged %>%
  select(activity_date,serial_number, employee_id,
         facility_address,facility_city, facility_id,
         facility_name, facility_state, facility_zip,
         grade, owner_id, owner_name, pe_description, 
         program_element_pe, program_name, program_status,
         record_id, score, service_code, service_description,
         points, violation_code, violation_description,
         violation_status) %>%
  filter(months(activity_date) == "March") %>%
  as.data.frame()

#Peek
head(finalResults)

# Save the results to a CSV file
write.csv(
  x = finalResults,
  file = "marchLAFoodAnalytics.csv",
  row.names = FALSE)

# Chain methods together for month of April

finalResults <- merged %>%
  select(activity_date,serial_number, employee_id,
         facility_address,facility_city, facility_id,
         facility_name, facility_state, facility_zip,
         grade, owner_id, owner_name, pe_description, 
         program_element_pe, program_name, program_status,
         record_id, score, service_code, service_description,
         points, violation_code, violation_description,
         violation_status) %>%
  filter(months(activity_date) == "April") %>%
  as.data.frame()

#Peek
head(finalResults)

# Save the results to a CSV file
write.csv(
  x = finalResults,
  file = "aprilLAFoodAnalytics.csv",
  row.names = FALSE)

# Chain methods together for month of May

finalResults <- merged %>%
  select(activity_date,serial_number, employee_id,
         facility_address,facility_city, facility_id,
         facility_name, facility_state, facility_zip,
         grade, owner_id, owner_name, pe_description, 
         program_element_pe, program_name, program_status,
         record_id, score, service_code, service_description,
         points, violation_code, violation_description,
         violation_status) %>%
  filter(months(activity_date) == "May") %>%
  as.data.frame()

#Peek
head(finalResults)

# Save the results to a CSV file
write.csv(
  x = finalResults,
  file = "mayLAFoodAnalytics.csv",
  row.names = FALSE)

# Chain methods together for month of June

finalResults <- merged %>%
  select(activity_date,serial_number, employee_id,
         facility_address,facility_city, facility_id,
         facility_name, facility_state, facility_zip,
         grade, owner_id, owner_name, pe_description, 
         program_element_pe, program_name, program_status,
         record_id, score, service_code, service_description,
         points, violation_code, violation_description,
         violation_status) %>%
  filter(months(activity_date) == "June") %>%
  as.data.frame()

#Peek
head(finalResults)

# Save the results to a CSV file
write.csv(
  x = finalResults,
  file = "juneLAFoodAnalytics.csv",
  row.names = FALSE)

# Chain methods together for month of July

finalResults <- merged %>%
  select(activity_date,serial_number, employee_id,
         facility_address,facility_city, facility_id,
         facility_name, facility_state, facility_zip,
         grade, owner_id, owner_name, pe_description, 
         program_element_pe, program_name, program_status,
         record_id, score, service_code, service_description,
         points, violation_code, violation_description,
         violation_status) %>%
  filter(months(activity_date) == "July") %>%
  as.data.frame()

#Peek
head(finalResults)

# Save the results to a CSV file
write.csv(
  x = finalResults,
  file = "julyLAFoodAnalytics.csv",
  row.names = FALSE)

# Chain methods together for month of August

finalResults <- merged %>%
  select(activity_date,serial_number, employee_id,
         facility_address,facility_city, facility_id,
         facility_name, facility_state, facility_zip,
         grade, owner_id, owner_name, pe_description, 
         program_element_pe, program_name, program_status,
         record_id, score, service_code, service_description,
         points, violation_code, violation_description,
         violation_status) %>%
  filter(months(activity_date) == "August") %>%
  as.data.frame()

#Peek
head(finalResults)

# Save the results to a CSV file
write.csv(
  x = finalResults,
  file = "augustLAFoodAnalytics.csv",
  row.names = FALSE)

# Chain methods together for month of September

finalResults <- merged %>%
  select(activity_date,serial_number, employee_id,
         facility_address,facility_city, facility_id,
         facility_name, facility_state, facility_zip,
         grade, owner_id, owner_name, pe_description, 
         program_element_pe, program_name, program_status,
         record_id, score, service_code, service_description,
         points, violation_code, violation_description,
         violation_status) %>%
  filter(months(activity_date) == "September") %>%
  as.data.frame()

#Peek
head(finalResults)

# Save the results to a CSV file
write.csv(
  x = finalResults,
  file = "septemberLAFoodAnalytics.csv",
  row.names = FALSE)

# Chain methods together for month of October

finalResults <- merged %>%
  select(activity_date,serial_number, employee_id,
         facility_address,facility_city, facility_id,
         facility_name, facility_state, facility_zip,
         grade, owner_id, owner_name, pe_description, 
         program_element_pe, program_name, program_status,
         record_id, score, service_code, service_description,
         points, violation_code, violation_description,
         violation_status) %>%
  filter(months(activity_date) == "October") %>%
  as.data.frame()

#Peek
head(finalResults)

# Save the results to a CSV file
write.csv(
  x = finalResults,
  file = "octoberLAFoodAnalytics.csv",
  row.names = FALSE)

# Chain methods together for month of November

finalResults <- merged %>%
  select(activity_date,serial_number, employee_id,
         facility_address,facility_city, facility_id,
         facility_name, facility_state, facility_zip,
         grade, owner_id, owner_name, pe_description, 
         program_element_pe, program_name, program_status,
         record_id, score, service_code, service_description,
         points, violation_code, violation_description,
         violation_status) %>%
  filter(months(activity_date) == "November") %>%
  as.data.frame()

#Peek
head(finalResults)

# Save the results to a CSV file
write.csv(
  x = finalResults,
  file = "novemberLAFoodAnalytics.csv",
  row.names = FALSE)

# Chain methods together for month of December

finalResults <- merged %>%
  select(activity_date,serial_number, employee_id,
         facility_address,facility_city, facility_id,
         facility_name, facility_state, facility_zip,
         grade, owner_id, owner_name, pe_description, 
         program_element_pe, program_name, program_status,
         record_id, score, service_code, service_description,
         points, violation_code, violation_description,
         violation_status) %>%
  filter(months(activity_date) == "December") %>%
  as.data.frame()

#Peek
head(finalResults)

# Save the results to a CSV file
write.csv(
  x = finalResults,
  file = "decemberLAFoodAnalytics.csv",
  row.names = FALSE)
