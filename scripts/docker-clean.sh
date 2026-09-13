#!/usr/bin/env bash
# docker-clean: Safely cleanup dangling docker assets
echo "Pruning dangling docker images and containers..."
docker container prune -f 2>/dev/null || true
docker image prune -f 2>/dev/null || true
docker volume prune -f 2>/dev/null || true
echo "Docker cleanup done."
