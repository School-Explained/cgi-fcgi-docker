FROM alpine:latest

MAINTAINER Raymond Walker <raymond.walker@greenpeace.org>

RUN apk add --no-cache fcgi

ENV \
    HOST="127.0.0.1" \
    PORT="9000" \
    REQUEST_METHOD="get" \
    SCRIPT_FILENAME="/health-check" \
    SCRIPT_NAME="/health-check"

ENTRYPOINT ["/usr/bin/cgi-fcgi"]
