#!/bin/bash
set -e

# Railway provides PORT env var - use it for gateway
export CLAWDBOT_GATEWAY_PORT=${PORT:-8080}

# Start gateway in unconfigured mode (no setup required)
exec node dist/index.js gateway --allow-unconfigured --bind lan
