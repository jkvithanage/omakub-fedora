# syntax=docker/dockerfile:1
FROM fedora:41

# Install required packages
RUN dnf update -y && \
    dnf install -y \
        sudo \
        git \
        wget \
        curl \
        unzip \
        bash-completion \
    && dnf clean all

# Create a non-root user to simulate a real setup
RUN useradd -ms /bin/bash dev && \
    echo "dev:dev" | chpasswd && \
    echo "dev ALL=(ALL) NOPASSWD:ALL" >> /etc/sudoers

# Copy the parent directory into the container
COPY . /home/dev/omakub-fedora
RUN chown -R dev:dev /home/dev/omakub-fedora

USER dev
WORKDIR /home/dev/omakub-fedora
