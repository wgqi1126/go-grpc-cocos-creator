#!/usr/bin/env bash

cd $(dirname $0)

go install google.golang.org/protobuf/cmd/protoc-gen-go &&
  go install google.golang.org/grpc/cmd/protoc-gen-go-grpc
