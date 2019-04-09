FROM rust:1.33

WORKDIR /usr/src/app

RUN apt-get update && apt-get install -y libusb-1.0-0-dev build-essential clang libclang-dev
RUN cargo install webchain-cli

ENTRYPOINT ["webchain-cli", "-v", "--base-path", "/data", "server", "0.0.0.0"]

EXPOSE 1920
