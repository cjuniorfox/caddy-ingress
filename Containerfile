FROM docker.io/caddy/ingress:v0.2.1

COPY cloudstrife-ca.crt /usr/local/share/ca-certificates/cloudstrife-ca.crt

RUN apk add --no-cache ca-certificates

RUN update-ca-certificates
