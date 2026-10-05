#!/bin/sh
set -eu

CACHE_DIR=${HF_HOME:-/cache/huggingface}

mkdir -p "$CACHE_DIR"/hub "$CACHE_DIR"/xet
chmod -R 777 "$CACHE_DIR"

exec "$@"
