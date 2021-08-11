#!/usr/bin/env bash

cd $(dirname $0)

DIR=.
OUT_DIR=.

protoc -I=$DIR *.proto \
  --js_out=import_style=commonjs:$OUT_DIR \
  --grpc-web_out=import_style=commonjs,mode=grpcwebtext:$OUT_DIR
