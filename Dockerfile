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
    && dnf clean all
# Create a non-root user to simulate a real setup
RUN useradd -ms /bin/bash dev && echo "dev ALL=(ALL) NOPASSWD:ALL" >> /etc/sudoers

USER dev
WORKDIR /home/dev

# Bootstrapping Omakub
RUN wget -qO- https://raw.githubusercontent.com/jkvithanage/omakub-fedora/stable/boot.sh | bash

# Start shell
CMD ["/bin/bash"]
