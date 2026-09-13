#!/usr/bin/env bash
# port-checker: Inspect listening ports
PORT=${1:-""}
if [ -z "$PORT" ]; then
  echo "Usage: port-checker.sh <port>"
  exit 1
fi
echo "Checking port $PORT..."
ss -tulwn 2>/dev/null | grep ":$PORT " || netstat -tuln 2>/dev/null | grep ":$PORT " || lsof -i :"$PORT" 2>/dev/null || echo "No active listener detected on port $PORT."
