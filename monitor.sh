#!/bin/bash

echo "Generating System Report..."

# Create logs folder if not existing
mkdir -p logs

# Save system details into log file
{
    echo "System Monitoring Report"
    echo "========================"
    echo "Date & Time: $(date)"
    echo ""
    echo "Disk Usage:"
    df -h
    echo ""
    echo "Memory Usage:"
    free -h
    echo ""
    echo "CPU Load:"
    top -bn1 | head -n 5
} > logs/monitor.log

echo "Report generated successfully!"
echo "Check logs/monitor.log for details."
