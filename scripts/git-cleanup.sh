#!/usr/bin/env bash
# git-cleanup: Prune local branches that have been merged into the default branch

set -euo pipefail

DEFAULT_BRANCH=$(git symbolic-ref refs/remotes/origin/HEAD 2>/dev/null | sed 's@^refs/remotes/origin/@@' || echo "main")

echo "Fetching remote pruning..."
git fetch -p origin

echo "Cleaning up local merged branches (excluding $DEFAULT_BRANCH)..."
git branch --merged "$DEFAULT_BRANCH" | grep -vE "^\*|master|main|dev|production" | xargs -r git branch -d || true

echo "Git branch cleanup completed."
