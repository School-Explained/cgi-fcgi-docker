FROM alpine:latest

RUN apk add --no-cache fcgi

ENV \
    REQUEST_METHOD="get" \
    SCRIPT_FILENAME="/health-check" \
    SCRIPT_NAME="/health-check"

CMD ["/usr/bin/cgi-fcgi"]
