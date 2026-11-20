#!/bin/bash
# analyze_log.sh - prints a summary of a web server log file

LOGFILE="$1"

echo "Total requests:"
wc -l < "$LOGFILE"

echo ""
echo "Requests per status code:"
awk '{print $9}' "$LOGFILE" | sort | uniq -c | sort -rn
