#!/bin/sh
# Your app: replace this with your own program, in any language.
trap 'exit 0' TERM INT
while :; do
  echo "Hello World from $(hostname)"
  sleep 10 & wait $!
done
