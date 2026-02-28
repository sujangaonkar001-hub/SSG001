FROM alpine:3.19

# Install DarkTunnel (fastest tunnel)
RUN apk update && apk add --no-cache wget unzip \
    && wget https://github.com/xxf098/darktunnel/releases/download/v0.0.11/darktunnel-linux-amd64.zip \
    && unzip darktunnel-linux-amd64.zip \
    && chmod +x darktunnel \
    && apk del wget unzip \
    && rm -rf /var/cache/apk/*

EXPOSE 443/tcp 443/udp
WORKDIR /root
CMD ["./darktunnel", "server", "--port", "443", "--fast"]
