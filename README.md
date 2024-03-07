# Archive Project Script

A Bash script for archiving files larger than 20MB within a specified directory.

## Description

This Bash script automates the process of archiving files larger than 20MB within a specified directory. It searches for files exceeding the specified size limit, compresses them using gzip, and moves them to an 'archive' folder within the same directory.

## Usage

### Prerequisites

- Bash (Bourne Again SHell) environment
- Linux or Unix-like operating system

### Installation

1. Download the `archive_project.sh` script.
2. Make the script executable using the command:
    ```bash
    chmod +x archive_project.sh
    ```

### Configuration

Before running the script, ensure to adjust the following variables in the script according to your requirements:

- `BASE`: The base directory where files are located.
- `DAYS`: Number of days for the file age (unused in the current version).
- `DEPTH`: Maximum depth to search within the directory.
- `RUN`: Flag to control the execution (0 = run, 1 = dry-run).

### Execution

To run the script:

```bash
./archive_project.sh
