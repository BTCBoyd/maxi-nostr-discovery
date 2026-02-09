#!/bin/bash
# Quick test to see what Nostr.band actually returns

timeout 10 curl -s "https://api.nostr.band/v0/trending/notes?limit=5" > test-response.json 2>&1

if [ $? -eq 0 ]; then
    echo "SUCCESS - Response received:"
    cat test-response.json | head -50
else
    echo "FAILED - Timeout or error"
fi
