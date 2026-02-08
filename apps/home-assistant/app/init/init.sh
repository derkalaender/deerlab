#!/bin/sh
set -e

echo "Initializing Home Assistant configuration..."

# Copy configuration files if they don't exist
for file in configuration.yaml automations.yaml scenes.yaml secrets.yaml scripts.yaml; do
  if [ ! -f "/config/${file}" ]; then
    echo "Copying ${file} to /config"
    cp "/config-init/${file}" "/config/${file}"
  else
    echo "${file} already exists, skipping"
  fi
done

echo "Initialization complete"
