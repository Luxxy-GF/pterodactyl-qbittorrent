FROM debian:bookworm-slim

# Path: Dockerfile

RUN apt-get update && apt upgrade -y && apt-get install -y \
    build-essential \
    curl \
    git \
    libssl-dev \
    pkg-config \
    && rm -rf /var/lib/apt/lists/*

RUN useradd -m -d /home/container container

USER        container
ENV         USER=container HOME=/home/container
WORKDIR     /home/container

COPY        ./entrypoint.sh /entrypoint.sh
COPY        --chmod=777 ./start.sh /start.sh
COPY        --chmod=777 ./qbittorrent /qbittorrent
CMD         [ "/bin/bash", "/entrypoint.sh" ]