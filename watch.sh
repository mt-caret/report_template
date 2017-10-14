#!/usr/bin/env bash
make
while inotifywait -e close_write ./*; do
  make
done
