#!/bin/bash

# Generate timestamp-based commit message
COMMIT_MESSAGE=$(date +%Y%m%d.%H.%M.%S.$$)

# Add all files
git add .

# Commit with the timestamp message
git commit -m "$COMMIT_MESSAGE"

# Push to the remote repository
# Assuming the branch is 'main' and remote is 'origin'
git push origin main

echo "Changes have been committed with message: $COMMIT_MESSAGE" 