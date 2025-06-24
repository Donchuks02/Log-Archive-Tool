#!/bin/bash

# ===== Log Archive Tool =====

# Check if the user provided a log directory

if [ -z "$1" ]; then
	echo "Usage: $0 <log-directory>"
	exit 1
fi

LOG_DIR="$1"

# Check if the provided directory exists
if [ ! -d "$LOG_DIR" ]; then
	echo "Error: Directory '$LOG_DIR' does not exist."
	exit 1
fi

# Create archive folder if doesn'nt exist
ARCHIVE_DIR="./archived_logs"
mkdir -p "$ARCHIVE_DIR"

# Create timestamp
TIMESTAMP=$(date "+%Y%m%d_%H%M%S")
ARCHIVE_NAME="logs_archive_${TIMESTAMP}.tar.gz"
ARCHIVE_PATH="${ARCHIVE_DIR}/${ARCHIVE_NAME}"

#Compress logs
tar -czf "$ARCHIVE_PATH" "$LOG_DIR"

# Log archive creation
LOG_FILE="archive_log.txt"
echo "$TIMESTAMP: Archived $LOG_DIR to $ARCHIVE_PATH" >> "$LOG_FILE"

# Success message
echo "Logs archived successfully to: $ARCHIVE_PATH"
echo "Archive record saved to : $LOG_FILE"

#Display contents of archive
echo -e "\n Contents of the archive:"
tar -tzf "$ARCHIVE_PATH"
