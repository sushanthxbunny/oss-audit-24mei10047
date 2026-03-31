#!/bin/bash

# Script 2: FOSS Package Inspector
# Author: Sushanth Reddy

PACKAGE="python3"

echo "Checking package: $PACKAGE"
echo "--------------------------------"

# Check if package is installed
if dpkg -l | grep -w $PACKAGE > /dev/null 2>&1; then
    echo "$PACKAGE is installed."

    # Show details
    dpkg -l | grep -w $PACKAGE
else
    echo "$PACKAGE is NOT installed."
fi

echo "--------------------------------"

# Case statement for description
case $PACKAGE in
    python3)
        echo "Python: A powerful, readable, and open-source programming language."
        ;;
    git)
        echo "Git: A distributed version control system created for collaboration."
        ;;
    vlc)
        echo "VLC: A free media player capable of playing almost any format."
        ;;
    apache2)
        echo "Apache: A widely used open-source web server."
        ;;
    *)
        echo "Unknown package."
        ;;
esac