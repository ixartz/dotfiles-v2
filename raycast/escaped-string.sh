#!/bin/bash

# Required parameters:
# @raycast.schemaVersion 1
# @raycast.title Escaped String
# @raycast.mode silent

# Optional parameters:
# @raycast.icon 🤖

escaped=$(pbpaste) && printf '%q' "$escaped" | pbcopy
echo "Escaped string for shell"
