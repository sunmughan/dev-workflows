#!/usr/bin/env bash
# git-log-summary: Render formatted commit overview
COUNT=${1:-10}
git log -n "$COUNT" --pretty=format:"%C(yellow)%h%Creset %C(cyan)%ad%Creset %s %C(green)(%an)%Creset" --date=short
echo ""
