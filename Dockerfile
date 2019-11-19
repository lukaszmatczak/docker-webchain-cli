FROM rust:1.33

WORKDIR /usr/local/bin

RUN wget https://github.com/lukaszmatczak/docker-webchain-cli/releases/download/0.22.1/webchain-cli 

ENTRYPOINT ["webchain-cli", "-v", "--base-path", "/data", "server", "0.0.0.0"]

EXPOSE 1920
