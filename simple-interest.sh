#!/bin/bash
# Script to calculate simple interest

echo "Enter the principal amount:"
read principal
echo "Enter the rate of interest (in percentage):"
read rate
echo "Enter the time period (in years):"
read time

# Calculate simple interest using awk for floating-point math
interest=$(echo "$principal $rate $time" | awk '{printf "%.2f", ($1 * $2 * $3) / 100}')

echo "The Simple Interest is: $interest"
