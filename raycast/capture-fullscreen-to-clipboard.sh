#!/bin/bash

# Required parameters:
# @raycast.schemaVersion 1
# @raycast.title Capture Fullscreen to Clipboard
# @raycast.mode silent

# Optional parameters:
# @raycast.icon 📸

screencapture -c
echo "Screenshot saved to clipboard"
