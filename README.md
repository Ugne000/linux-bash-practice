# linux-bash-practice

Small Bash scripts I wrote while learning Linux.

## analyze_log.sh

Reads a web server access log and prints a summary report:

- total number of requests
- number of requests per HTTP status code
- the top 5 IP addresses by number of requests
- number of 404 (not found) and 500 (server error) responses

### Usage

```
./analyze_log.sh sample.log
```

If you run it without a file name, or with a file that does not exist, it prints a message and stops.

### Example output

```
Total requests:
      30

Requests per status code:
  15 200
   5 404
   4 500
   3 403
   2 302
   1 301

Top 5 IP addresses:
   9 203.0.113.5
   5 203.0.113.99
   4 203.0.113.17
   4 198.51.100.42
   4 198.51.100.23

Not found (404) errors:
       5
Server (500) errors:
       4
```

### Notes

- `sample.log` contains made-up requests. The IP addresses are from ranges reserved for documentation, so no real data is included.
- When several IP addresses have the same number of requests, only five are shown, so some tied addresses are cut off.
- On a Mac, `wc` adds spaces before numbers. On Linux the numbers are printed without them.

### What I learned

(write this part yourself, see below)
