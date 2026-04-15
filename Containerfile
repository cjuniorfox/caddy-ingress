ARG SOURCE_TAG="v0.2.1"

FROM docker.io/caddy/ingress:${SOURCE_TAG}

COPY cloudstrife-ca.crt /usr/local/share/ca-certificates/cloudstrife-ca.crt

RUN apk add --no-cache ca-certificates

RUN update-ca-certificates
