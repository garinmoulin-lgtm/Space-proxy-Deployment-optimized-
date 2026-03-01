#!/bin/bash

# Start Space Proxy
node index.js &

# Give proxy time to bind to port 8080
sleep 5

# Start Cloudflare Tunnel
cloudflared tunnel --url http://localhost:8080
