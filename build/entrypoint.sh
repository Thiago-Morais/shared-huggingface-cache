#!/bin/sh
set -euo

mkdir -p /cache/hub /cache/xet
chmod -R 777 /cache

exec "$@"
