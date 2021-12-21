#!/bin/bash

# Required parameters:
# @raycast.schemaVersion 1
# @raycast.title ShowIP
# @raycast.mode compact

# Optional parameters:
# @raycast.icon 🤖

cmd=$(curl https://ipinfo.io/json | jq '.ip')

echo $cmd | pbcopy
echo $cmd
