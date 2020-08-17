# cgi-fcgi Docker

Docker image wrapping cgi-fcgi, for querying FastCGI servers

Forked from [greenpeace](https://github.com/greenpeace/gpi-docker-cgi-fcgi).

## Quickstart

```
# Show usage:
docker run --rm -t ekreative/cgi-fcgi
```

By default, the cgi-fcgi process queries /health-check

```
# Connect to fastcgi server at 127.0.0.1:9000 with default path /health-check
docker run --rm -t ekreative/cgi-fcgi -bind -connect 127.0.0.1:9000
```

### Querying a custom path or script

Environment variables configure the filename, script name and request method

```
# This request responds with the contents of the file /app/www/index.php
docker run --rm -t \
  -e "SCRIPT_FILENAME=/app/www/index.php" \
  -e "SCRIPT_NAME=index.php" \
  -e "REQUEST_METHOD=post" \
  ekreative/cgi-fcgi -bind -connect 127.0.0.1:9000
```
