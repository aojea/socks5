FROM golang:latest as builder
WORKDIR /go/src/github.com/aojea/socks5
COPY . .
RUN CGO_ENABLED=0 GOOS=linux go build -a -installsuffix cgo -ldflags '-s' -o ./socks5

FROM alpine
RUN apk update && apk add ca-certificates && rm -rf /var/cache/apk/*
RUN update-ca-certificates
COPY --from=builder /go/src/github.com/aojea/socks5/socks5 /
ENTRYPOINT ["/socks5"]
