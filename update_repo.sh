#!/bin/bash

echo "Select an option to update:"
echo "1. Update from release"
echo "2. Update from develop"
read -p "Enter your choice (1 or 2): " choice

case $choice in
    1)
        echo "Fetching updates from release branch..."
        git fetch origin
        echo "Resetting to release branch..."
        git reset --hard origin/release
        chmod +x update_repo.sh
        ;;
    2)
        echo "Fetching updates from 1.0-develop branch..."
        git fetch origin
        echo "Resetting to 1.0-develop branch..."
        git reset --hard origin/1.0-develop
        chmod +x update_repo.sh
        ;;
    *)
        echo "Invalid choice. Please run the script again and select either 1 or 2."
        ;;
esac
