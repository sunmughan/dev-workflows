#!/usr/bin/env bash
# json-beautifier: Pretty print and validate JSON file
FILE=${1:-""}
if [ -z "$FILE" ] || [ ! -f "$FILE" ]; then
  echo "Usage: json-beautifier.sh <file.json>"
  exit 1
fi
if command -v jq >/dev/null 2>&1; then
  jq . "$FILE"
else
  awk '{print}' "$FILE"
fi
