FROM alpine:latest
RUN apk add --no-cache wget unzip
RUN wget https://github.com/xxf098/darktunnel/releases/latest/download/darktunnel-linux-arm64.zip && unzip darktunnel-linux-arm64.zip && chmod +x darktunnel
EXPOSE 443
CMD ["./darktunnel", "server"]
