#!/bin/bash

# Required parameters:
# @raycast.schemaVersion 1
# @raycast.title Capture Screen Selection to Clipboard
# @raycast.mode silent

# Optional parameters:
# @raycast.icon 📸

screencapture -ci
echo "Selection saved to clipboard"
