#!/bin/bash

echo "Enter the number of days after you want to run Script:"

read days

  

# Calculate the future date

future_date=$(date -d "+$days days" "+%Y-%m-%d")

  

echo "Date after adding $days days: $future_date"

  

# Extract day, month, and year from the input date

day=$(date -d "$future_date" "+%-d")

month=$(date -d "$future_date" "+%-m")

year=$(date -d "$future_date" "+%Y")

  

# Generate the cron job schedule pattern

schedule="23 12 $day $month *"

  

# Output the schedule pattern

echo "Cron job schedule pattern for $future_date: $schedule"
