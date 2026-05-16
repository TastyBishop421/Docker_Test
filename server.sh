#!/usr/bin/env bash

PORT="${PORT:-8080}"

echo "CS2600 demo server starting..."
echo "Listening on port $PORT"
echo "Press Ctrl+C to stop the server."

while true; do
    echo "Waiting for a client connection..."

    nc -l -p "$PORT" | while read -r message; do
        echo "Client said: $message"
    done

    echo "Client disconnected."
done