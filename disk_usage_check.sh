#!/bin/bash
# Disk usage check script
# Warns if disk usage exceeds threshold

THRESHOLD=80

df -h | grep -E '^/dev/' | while read -r filesystem size used avail use mount; do
    usage=${use%\%}
    if [ "$usage" -ge "$THRESHOLD" ]; then
        echo "WARNING: $filesystem mounted on $mount is ${usage}% full"
    else
        echo "OK: $filesystem mounted on $mount is ${usage}% full"
    fi
done
