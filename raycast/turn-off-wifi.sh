#!/bin/bash

# Required parameters:
# @raycast.schemaVersion 1
# @raycast.title Turn Off Wifi
# @raycast.mode silent

# Optional parameters:
# @raycast.icon 💻

networksetup -setairportpower en0 off
