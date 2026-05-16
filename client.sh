#!/usr/bin/env bash

HOST="${HOST:-localhost}"
PORT="${PORT:-8080}"

if [ "$#" -gt 0 ]; then
    MESSAGE="$*"
else
    echo "Enter a message to send to the server:"
    read -r MESSAGE
fi

echo "$MESSAGE" | nc "$HOST" "$PORT"