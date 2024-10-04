#!/bin/bash

# Lock file location
LOCKFILE="/var/lock/get_set_waterFlow.lock"

# Check if the lock file already exists
exec 9>"$LOCKFILE"
if ! flock -n 9; then
    echo "Another instance of the script is running."
    exit 1
fi

# Cron environment logs script for debugging
env > /home/drama/scripts/shell/logs/cron_env.log

# Use keychain to manage the SSH key
eval $(keychain --eval id_ed25519)

# Navigate to the repository directory
cd /home/drama/scripts/svdrama_water_tanks || exit

# Pull the latest changes from the remote repository
git pull origin main

# Activate the virtual environment
source venv/bin/activate

# Load any new required packages
python -m pip install -r requirements.txt

# Run the first Python script 
python set_waterFlow.py

# Run the second Python script 
python get_waterFlow.py

# Deactivate the virtual environment
deactivate

# Release the lock
flock -u 9
