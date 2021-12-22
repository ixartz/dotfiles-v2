#!/bin/bash

# Required parameters:
# @raycast.schemaVersion 1
# @raycast.title Open Clipboard to Google Chrome
# @raycast.mode silent

# Optional parameters:
# @raycast.icon 📋

link=$(pbpaste)
open -u $link
