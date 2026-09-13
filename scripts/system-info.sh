#!/usr/bin/env bash
# system-info: Output core system stats
echo "=== System Info ==="
uname -a
echo "Uptime: $(uptime)"
free -h 2>/dev/null || true
df -h .
