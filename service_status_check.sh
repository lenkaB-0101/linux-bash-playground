#!/bin/bash
# Service status check script
# Checks if a given service is running

SERVICE_NAME=$1

if [ -z "$SERVICE_NAME" ]; then
    echo "Usage: $0 <service_name>"
    exit 1
fi

STATUS=$(systemctl is-active "$SERVICE_NAME" 2>/dev/null)

if [ "$STATUS" = "active" ]; then
    echo "OK: Service '$SERVICE_NAME' is running"
else
    echo "WARNING: Service '$SERVICE_NAME' is NOT running (status: $STATUS)"
fi
