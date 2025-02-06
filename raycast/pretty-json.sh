#!/bin/bash

# Required parameters:
# @raycast.schemaVersion 1
# @raycast.title Pretty JSON
# @raycast.mode silent

# Optional parameters:
# @raycast.icon 💻

pbpaste | python -m json.tool | pbcopy
echo "Pretty JSON"
