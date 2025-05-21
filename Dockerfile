FROM docker.io/library/ubuntu:24.04 as base

WORKDIR /tmp

SHELL ["/bin/bash", "-c"]

ARG USER=bazel-user
ARG UID=1000

RUN echo "The only things that we need" \
    # Add user profile for local user to have the correct file permission
    && useradd --no-log-init --create-home --non-unique --system -u $UID -g root $USER \
    # Update package list
    && DEBIAN_FRONTEND=noninteractive apt-get update \
    # Install basic utilities
    && DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends \
        apt-transport-https \
        apt-utils \
        ca-certificates \
    # Update system certificates
    && apt-get --only-upgrade install ca-certificates \
    && update-ca-certificates --fresh \
    # Clean up after apt install
    && echo "Clean up" \
    && DEBIAN_FRONTEND=noninteractive apt-get clean \
    && rm -rf /var/lib/apt/lists/* \
    && rm -rf /tmp/*
    
# Add bazelisk
ADD https://github.com/bazelbuild/bazelisk/releases/download/v1.26.0/bazelisk-linux-amd64 /bin/bazelisk
RUN chmod 777 /bin/bazelisk
