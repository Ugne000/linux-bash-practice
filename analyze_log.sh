#!/bin/bash
# analyze_log.sh - prints a summary of a web server log file

LOGFILE="$1"

echo "Total requests:"
wc -l < "$LOGFILE"

echo ""
echo "Requests per status code:"
awk '{print $9}' "$LOGFILE" | sort | uniq -c | sort -rn

echo ""
echo "Top 5 IP addresses:"
awk '{print $1}' "$LOGFILE" | sort | uniq -c | sort -rn | head -5

echo ""
echo "Not found (404) errors:"
awk '$9 == 404' "$LOGFILE" | wc -l
echo "Server (500) errors:"
awk '$9 == 500' "$LOGFILE" | wc -l
