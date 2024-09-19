FROM ubuntu:22.04

RUN apt-get update && DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends openssl ca-certificates curl netcat jq

COPY sandcat.hex /
COPY start-sandcat.sh /

WORKDIR /

ENTRYPOINT ["/sandcat -v"]
