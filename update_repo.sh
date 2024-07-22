#!/bin/bash

echo "Select an option to update:"
echo "1. Update from release"
echo "2. Update from develop"
read -p "Enter your choice (1 or 2): " choice

case $choice in
    1)
        echo "Updating from release branch..."
        git pull origin release
        ;;
    2)
        echo "Updating from 1.0-develop branch..."
        git pull origin 1.0-develop
        ;;
    *)
        echo "Invalid choice. Please run the script again and select either 1 or 2."
        ;;
esac
