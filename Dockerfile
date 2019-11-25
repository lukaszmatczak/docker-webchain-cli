FROM rust:1.33

WORKDIR /usr/local/bin

RUN apt-get update && apt-get install -y libusb-1.0-0
RUN wget https://github.com/lukaszmatczak/docker-webchain-cli/releases/download/0.22.1/webchain-cli 
RUN chmod +x webchain-cli

ENTRYPOINT ["webchain-cli", "-v", "--base-path", "/data", "-c", "morden", "server", "0.0.0.0"]

EXPOSE 1920
