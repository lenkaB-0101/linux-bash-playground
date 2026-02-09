#!/bin/bash
# Log error scan script
# Searches for error patterns in a log file

LOG_FILE=$1

if [ -z "$LOG_FILE" ]; then
    echo "Usage: $0 <log_file>"
    exit 1
fi

if [ ! -f "$LOG_FILE" ]; then
    echo "ERROR: File '$LOG_FILE' does not exist"
    exit 2
fi

echo "Scanning log file: $LOG_FILE"
grep -iE "error|fail|critical" "$LOG_FILE"
