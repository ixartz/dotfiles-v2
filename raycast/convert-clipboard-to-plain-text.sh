#!/bin/bash

# Required parameters:
# @raycast.schemaVersion 1
# @raycast.title Convert Clipboard to Plain Text
# @raycast.mode silent

# Optional parameters:
# @raycast.icon 💻

pbpaste | pbcopy
