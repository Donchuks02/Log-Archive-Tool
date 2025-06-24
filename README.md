# Log Archive Tool (Bash)

A simple CLI tool that compresses log files into timestamped `.tar.gz` archives.  
Perfect for archiving logs from directories like `/var/log` and keeping your system clean and organized.

---

## Features

- Archives logs from any directory via CLI
- Adds date & time to archive filename (e.g., `logs_archive_20250624_151735.tar.gz`)
- Stores archived logs in a separate `archived_logs/` directory
- Logs each archive action in `archive_log.txt`
- Lists contents of each archive after creation

---

## Requirements

- Unix-like OS (Linux/macOS)
- Bash shell
- `tar` and `gzip` utilities (typically pre-installed)

---

## Usage

```bash
./log-archive.sh <log-directory>
```

## Project URL :
 
- https://roadmap.sh/projects/log-archive-tool

## Built with 💻 by Chuks for learning purpose
