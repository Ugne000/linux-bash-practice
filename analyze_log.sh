#!/bin/bash
# analyze_log.sh - prints a summary of a web server log file
# Usage: ./analyze_log.sh <logfile>

LOGFILE="$1"

# Check that a file name was given
if [ -z "$LOGFILE" ]; then
  echo "Usage: $0 <logfile>"
  exit 1
fi

# Check that the file exists
if [ ! -f "$LOGFILE" ]; then
  echo "Error: file '$LOGFILE' not found"
  exit 1
fi

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
