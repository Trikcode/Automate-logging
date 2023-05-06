#!/bin/bash

# Create the main directory
mkdir MAK

# Create subdirectories
mkdir MAK/IS
mkdir MAK/IT
mkdir MAK/SW
mkdir MAK/NW

# Create files and populate them
for i in {1..4}; do
  # Create files in IS subdirectory
  for j in $(seq $i); do
    echo $i >> MAK/IS/file$j
  done

  # Create files in IT subdirectory
  for j in $(seq $i); do
    echo $i >> MAK/IT/file$j
  done

  # Create files in SW subdirectory
  for j in $(seq $i); do
    echo $i >> MAK/SW/file$j
  done

  # Create files in NW subdirectory
  for j in $(seq $i); do
    echo $i >> MAK/NW/file$j
  done
done

# Change permissions of the files
chmod 640 MAK/IS/file1
chmod 640 MAK/IS/file2
chmod 640 MAK/IS/file3
chmod 640 MAK/IS/file4

chmod 640 MAK/IT/file1
chmod 640 MAK/IT/file2
chmod 640 MAK/IT/file3
chmod 640 MAK/IT/file4

chmod 640 MAK/SW/file1
chmod 640 MAK/SW/file2
chmod 640 MAK/SW/file3
chmod 640 MAK/SW/file4

chmod 640 MAK/NW/file1
chmod 640 MAK/NW/file2
chmod 640 MAK/NW/file3
chmod 640 MAK/NW/file4
