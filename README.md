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

### Notes

- `sample.log` contains made-up requests. 
- When several IP addresses have the same number of requests, only five are shown, so some tied addresses are cut off.
- On a Mac, `wc` adds spaces before numbers. On Linux the numbers are printed without them.
