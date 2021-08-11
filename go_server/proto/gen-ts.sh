#!/usr/bin/env bash

cd $(dirname $0)

DIR=.
OUT_DIR=.

protoc -I=$DIR *.proto \
  --js_out=import_style=commonjs,binary:$OUT_DIR \
  --ts_out="service=grpc-web:$OUT_DIR" \
#  --plugin="protoc-gen-ts=${PROTOC_GEN_TS_PATH}" \
