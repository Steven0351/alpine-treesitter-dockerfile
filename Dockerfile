FROM rust:1.54-alpine

RUN apk add git linux-headers build-base && \
  git clone https://github.com/tree-sitter/tree-sitter && \
  cd tree-sitter && \
  cargo build --release && \
  cp target/release/tree-sitter /usr/bin

