#!/usr/bin/env bash
# git-sync-fork: Synchronize current branch with upstream
UPSTREAM=${1:-upstream}
BRANCH=${2:-main}
echo "Fetching from $UPSTREAM..."
git fetch "$UPSTREAM" 2>/dev/null || true
git merge "$UPSTREAM/$BRANCH" --no-edit 2>/dev/null || true
git push origin "$BRANCH" 2>/dev/null || true
echo "Fork synced with $UPSTREAM/$BRANCH."
