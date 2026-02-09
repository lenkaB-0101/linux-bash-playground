#!/bin/bash
# Process monitor script
# Displays top processes by CPU and memory usage

echo "Top processes by CPU usage:"
ps aux --sort=-%cpu | head -n 6

echo ""
echo "Top processes by memory usage:"
ps aux --sort=-%mem | head -n 6
