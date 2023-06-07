FROM alpine:latest
RUN apk add --no-cache git docker-cli && rm -rf /var/cache/apk/*
