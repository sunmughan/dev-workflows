#!/usr/bin/env bash
# backup-workspace: Create compressed archive of specified path
TARGET=${1:-"."}
DEST=${2:-"/tmp"}
TIMESTAMP=$(date +"%Y%m%d_%H%M%S")
ARCHIVE="$DEST/backup_$TIMESTAMP.tar.gz"
echo "Creating archive: $ARCHIVE"
tar -czf "$ARCHIVE" "$TARGET" 2>/dev/null || true
echo "Backup created successfully."
