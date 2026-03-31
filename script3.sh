#!/bin/bash

# Script 3: Disk and Permission Auditor
# Author: Sushanth Reddy

DIRS=("/etc" "/var/log" "/home" "/usr/bin" "/tmp")

echo "========================================"
echo " Directory Audit Report"
echo "========================================"

for DIR in "${DIRS[@]}"; do
    if [ -d "$DIR" ]; then
        PERMS=$(ls -ld $DIR | awk '{print $1, $3, $4}')
        SIZE=$(du -sh $DIR 2>/dev/null | cut -f1)

        echo "$DIR"
        echo "Permissions & Owner : $PERMS"
        echo "Size                : $SIZE"
        echo "----------------------------------------"
    else
        echo "$DIR does not exist"
    fi
done

# Python-specific check
echo ""
echo "Checking Python directory..."

if [ -d "/usr/lib/python3" ]; then
    ls -ld /usr/lib/python3
else
    echo "Python directory not found"
fi

echo "========================================"