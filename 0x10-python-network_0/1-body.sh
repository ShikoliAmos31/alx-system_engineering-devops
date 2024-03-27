#!/bin/bash

# Check if the user provided a URL argument
if [ $# -ne 1 ]; then
    echo "Usage: $0 <URL>"
    exit 1
fi

# Send a GET request to the URL, and store the HTTP status code in response
response=$(curl -s -o /dev/null -w "%{http_code}" "${1}")

# Check if the HTTP status code is 200
if [ "$response" -eq 200 ]; then
    # If the status code is 200, display the body of the response
    curl -s -L "${1}"
else
    # If the status code is not 200, print an error message
    echo "Non-200 status code received: $response"
fi
