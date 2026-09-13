#!/usr/bin/env bash
# env-check: Verify presence of essential developer tooling
TOOLS=(git gh curl bash jq docker)
echo "Checking developer tools..."
for t in "${TOOLS[@]}"; do
  if command -v "$t" >/dev/null 2>&1; then
    echo "  [OK] $t ($(command -v "$t"))"
  else
    echo "  [MISSING] $t"
  fi
done
