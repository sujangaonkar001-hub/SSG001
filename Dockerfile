FROM alpine:latest
RUN apk add --no-cache shadowsocks-libev
EXPOSE 443/udp 443/tcp
COPY config.json /etc/shadowsocks-libev/config.json
CMD ["ss-server", "-c", "/etc/shadowsocks-libev/config.json", "-u"]
