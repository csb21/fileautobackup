#!/bin/bash

#Source directory
SOURCE_DIR="/mnt/c/Users/csbha/OneDrive/Documents/CSB/autobackuptest/docs"

#Backup directory
BACKUP_DIR="/mnt/c/Users/csbha/OneDrive/Documents/CSB/autobackuptest/backup"

#Ensure backup directory exists
mkdir -p "$BACKUP_DIR"

while true; do
    # Generate timestamp
    TIMESTAMP=$(date +"%Y-%m-%d_%H-%M-%S")

    # Define backup file name
    BACKUP_FILE="$BACKUP_DIR/backup_$TIMESTAMP.tar.gz"

    # Create a compressed backup
    tar -czf "$BACKUP_FILE" "$SOURCE_DIR"

    echo "Backup created: $BACKUP_FILE"

    # Wait 1 hour before running again
    sleep 3600
done
