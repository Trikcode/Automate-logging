#!/bin/bash

# Create the logfile name
logfile="ip_$(date +'%Y%m%d_%H%M%S').log"

# Function to check file type and write permissions
check_file() {
  local file="$1"
  
  if [ -e "$file" ]; then
    if [ -f "$file" ]; then
      echo "$file is a regular file."
      if [ -w "$file" ]; then
        echo "You have write permissions for $file."
        echo "$(date +'%Y-%m-%d %H:%M:%S') - $file is a regular file. Write permissions are granted." >> "$logfile"
      else
        echo "You do not have write permissions for $file."
        echo "$(date +'%Y-%m-%d %H:%M:%S') - $file is a regular file. Write permissions are not granted." >> "$logfile"
      fi
    elif [ -d "$file" ]; then
      echo "$file is a directory."
      echo "$(date +'%Y-%m-%d %H:%M:%S') - $file is a directory." >> "$logfile"
    else
      echo "$file is another type of file."
      echo "$(date +'%Y-%m-%d %H:%M:%S') - $file is another type of file." >> "$logfile"
    fi
  else
    echo "$file does not exist."
    echo "$(date +'%Y-%m-%d %H:%M:%S') - $file does not exist." >> "$logfile"
  fi
}

# Iterate through the arguments and check each file/directory
for arg in "$@"; do
  check_file "$arg"
done
