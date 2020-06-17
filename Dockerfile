FROM alpine:3.12
LABEL maintainer "Levent SAGIROGLU <LSagiroglu@gmail.com>"

ARG VERSION=3.0.1

RUN apk update && apk add --no-cache ca-certificates libc6-compat && update-ca-certificates
WORKDIR /tmp
RUN wget --no-cache --quiet https://github.com/FairwindsOps/pluto/releases/download/v${VERSION}/pluto_${VERSION}_linux_amd64.tar.gz -O pluto.tar.gz && \
    tar xvfz pluto.tar.gz 

# FROM scratch
# COPY --from=0 /etc/ssl/certs/ca-certificates.crt /etc/ssl/certs/ca-certificates.crt
# COPY --from=0 /tmp/pluto /bin/pluto
