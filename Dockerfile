FROM ubuntu:22.04

RUN apt-get update && DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends curl xxd ca-certificates

RUN ARCH=$(uname -m) && \
    if [ "$ARCH" = "x86_64" ]; then \
        curl -LO https://dl.k8s.io/release/v1.27.2/bin/linux/amd64/kubectl --output-dir /usr/local/bin/; \
    elif [ "$ARCH" = "aarch64" ]; then \
        curl -LO https://dl.k8s.io/release/v1.27.2/bin/linux/arm64/kubectl --output-dir /usr/local/bin/; \
    else \
        echo "Unsupported architecture: $ARCH"; exit 1; \
    fi && \
    chmod +x /usr/local/bin/kubectl

COPY sandcat.hex /
COPY start-sandcat.sh /
COPY res /

WORKDIR /

ENTRYPOINT ["/start-sandcat.sh"]
