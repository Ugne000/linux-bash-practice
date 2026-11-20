#!/bin/bash
# analyze_log.sh - prints a summary of a web server log file

LOGFILE="$1"

echo "Total requests:"
wc -l < "$LOGFILE"
