#!/bin/bash

echo "Syncing to $(echo /run/media/*/CIRCUITPY/)"

function update() {
  if [ -z "$(diff code.py /run/media/*/CIRCUITPY/code.py)" ]; then
    echo "No change."
    return
  fi

  echo "Syncing code changes."

  cp code.py /run/media/*/CIRCUITPY/code.py
  sync -f /run/media/*/CIRCUITPY/code.py
}

while true; do
  update
  sleep 5
done
