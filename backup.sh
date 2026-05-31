#!/bin/bash

THRESHOLD=80

USAGE=$(df -h / | awk 'NR==2 {gsub("%","",$5); print $5}')

echo "Current Disk Usage: ${USAGE}%"

if [ "$USAGE" -ge "$THRESHOLD" ]; then
    echo "WARNING: Disk usage is above ${THRESHOLD}%!"
else
    echo "Disk usage is within the safe limit."
fi
