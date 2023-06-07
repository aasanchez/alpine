FROM alpine:latest

RUN apk add --no-cache git docker-cli && rm -rf /var/cache/apk/*

# Create a new user with the desired GID
RUN addgroup -g 33333 gitpod \
    && adduser -h /home/gitpod -s /bin/sh -D -G gitpod -u 33333 gitpod

# gitpod/vscode requirements
RUN apk add \
    iptables \
    gcompat \
    libstdc++ \
    libgcc \
    bash \
    curl \
    yq \
    jq \
    && rm -rf /var/cache/apk/*

USER gitpod