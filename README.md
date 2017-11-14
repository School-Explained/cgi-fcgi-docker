# gpi-docker-cgi-fcgi

Docker image wrapping cgi-fcgi, for querying FastCGI servers

Image is built on Google Container Registry, and publically available for download.

[gcr.io/greenpeace-global-it/cgi-fcgi](https://console.cloud.google.com/gcr/images/greenpeace-global-it/GLOBAL/cgi-fcgi)

```
# Pull the image
docker pull gcr.io/greenpeace-global-it/cgi-fcgi
```

## Quickstart

```
# Show usage:
docker run --rm -t gcr.io/greenpeace-global-it/cgi-fcgi
```

By default, the cgi-fcgi process queries /health-check
```
# Connect to fastcgi server at 127.0.0.1:9000 with default path /health-check
docker run --rm -t gcr.io/greenpeace-global-it/cgi-fcgi -bind -connect 127.0.0.1:9000
```

### Querying a custom path or script

Environment variables configure the filename, script name and request method

```
# This request responds with the contents of the file /app/www/index.php
docker run --rm -t \
  -e "SCRIPT_FILENAME=/app/www/index.php" \
  -e "SCRIPT_NAME=index.php" \
  -e "REQUEST_METHOD=post" \
  gcr.io/greenpeace-global-it/cgi-fcgi -bind -connect 127.0.0.1:9000
```
