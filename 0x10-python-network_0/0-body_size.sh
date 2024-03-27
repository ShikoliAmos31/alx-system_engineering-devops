#!/bin/bash

# Check if URL is provided as argument
if [ -z "$1" ]; then
    echo "Usage: $0 <URL>"
    exit 1
fi

# Send request and display body size
curl -sI "$1" | awk '/Content-Length/ {print $2}' | tr -d '\r'
