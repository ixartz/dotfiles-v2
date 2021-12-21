#!/bin/bash

# Required parameters:
# @raycast.schemaVersion 1
# @raycast.title Turn On Wifi
# @raycast.mode silent

# Optional parameters:
# @raycast.icon ⚙️

networksetup -setairportpower en0 on
