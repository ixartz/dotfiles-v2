#!/bin/bash

# Required parameters:
# @raycast.schemaVersion 1
# @raycast.title Count Char
# @raycast.mode compact

# Optional parameters:
# @raycast.icon 🤖

cmd=$(pbpaste | wc -w)
echo $cmd
