#!/bin/bash

echo "Select an option to update:"
echo "1. Update from release"
echo "2. Update from develop"
read -p "Enter your choice (1 or 2): " choice

# Stash any local changes
git stash --include-untracked

case $choice in
    1)
        echo "Fetching updates from release branch..."
        git fetch origin
        echo "Resetting to release branch..."
        git reset --hard origin/release
        ;;
    2)
        echo "Fetching updates from 1.0-develop branch..."
        git fetch origin
        echo "Resetting to 1.0-develop branch..."
        git reset --hard origin/1.0-develop
        ;;
    *)
        echo "Invalid choice. Please run the script again and select either 1 or 2."
        # Apply the stash back if the choice is invalid
        git stash pop
        exit 1
        ;;
esac

# Apply the stash back after resetting
git stash pop

# Ensure the script remains executable
chmod +x update_repo.sh
