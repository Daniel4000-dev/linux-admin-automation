#!/bin/bash
# Backup important directories
BACKUP_DIR="/home/user/backup"
TIMESTAMP=$(date +"%Y%m%d_%H%M%S")
BACKUP_FILE="$BACKUP_DIR/backup_$TIMESTAMP.tar.gz"
tar -czf $BACKUP_FILE /home/user
echo "Backup created at $BACKUP_FILE"
