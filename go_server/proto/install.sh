#!/usr/bin/env bash

cd $(dirname $0)

apt install -y protobuf-compiler &&
  go install google.golang.org/protobuf/cmd/protoc-gen-go &&
  go install google.golang.org/grpc/cmd/protoc-gen-go-grpc &&
  wget https://github.com/grpc/grpc-web/releases/download/1.2.1/protoc-gen-grpc-web-1.2.1-linux-x86_64 &&
  sudo mv protoc-gen-grpc-web-1.2.1-linux-x86_64 /bin/protoc-gen-grpc-web &&
  sudo chmod +x /bin/protoc-gen-grpc-web &&
  npm i -g ts-protoc-gen
