#!/bin/bash

echo "Syncing to $(echo /run/media/*/CIRCUITPY/)"

while true; do
  cp code.py /run/media/*/CIRCUITPY/code.py
  sync -f /run/media/*/CIRCUITPY/code.py
  sleep 5
done
