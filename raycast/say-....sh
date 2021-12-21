#!/bin/bash

# Required parameters:
# @raycast.schemaVersion 1
# @raycast.title Say ...
# @raycast.mode silent

# Optional parameters:
# @raycast.icon 🎤
# @raycast.argument1 { "type": "text", "placeholder": "Say this...", "optional": false }

say "$1"
