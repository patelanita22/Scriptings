#!/bin/bash

# Variables

SOURCE="/home/anita/Scriptings"

BACKUP_DIR="/home/anita/backup"

DATE=$(date +"%Y-%m-%d_%H-%M-%S")

BACKUP_FILE="app_backup_$DATE .tar.gz"

echo "backup started at $(date)"

# Create backup directory

mkdir -p $BACKUP_DIR

# Take application backup

tar -czf "$BACKUP_DIR/$BACKUP_FILE" "$SOURCE"

# Check backup status

if [ $? -eq 0 ]

then
	echo "backup compeletd successfully"

else
	echo "backup failed"

	exit 1

fi

# Remove backup file folder than 7 days

find $BACKUP_DIR -type f -mtime +7 -delete

echo "old backup removed"

echo "backup completd at $(date)"


# Run Script
#chmod +x backup.sh

# Make it executable
#./backup.sh or sh backup.sh

# Automate Using Cron
#crontab -e # edit cron jab
#crontab -l # list
#crontab -r #remove

# Add cron job

# * * * * * /home/spark/project/output.log




