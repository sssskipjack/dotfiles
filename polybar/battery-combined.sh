#!/bin/bash

# Get the capacity of both batteries
CAPACITY1=$(cat /sys/class/power_supply/BAT0/capacity)
CAPACITY2=$(cat /sys/class/power_supply/BAT1/capacity)

# Calculate the average capacity
AVERAGE_CAPACITY=$(( ($CAPACITY1 + $CAPACITY2) / 2 ))

# Print the average capacity
echo "$AVERAGE_CAPACITY%"

