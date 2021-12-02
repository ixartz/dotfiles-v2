#! /bin/bash
# Expand save panel by default
defaults write NSGlobalDomain NSNavPanelExpandedStateForSaveMode -bool true
defaults write NSGlobalDomain NSNavPanelExpandedStateForSaveMode2 -bool true

# Expand print panel by default
defaults write NSGlobalDomain PMPrintingExpandedStateForPrint -bool true
defaults write NSGlobalDomain PMPrintingExpandedStateForPrint2 -bool true

# Opening and closing windows and popovers
defaults write -g NSAutomaticWindowAnimationsEnabled -bool false

# Launching an app from the Dock
defaults write com.apple.dock launchanim -bool false

# Speed up Mission Control animation
defaults write com.apple.dock expose-animation-duration -float 0.0

# Launchpad’s show and hide durations can be set independently. To set both to minimal delay, use these defaults write commands:
defaults write com.apple.dock springboard-show-duration -int 0
defaults write com.apple.dock springboard-hide-duration -float 0
defaults write com.apple.dock springboard-page-duration -float 0

# Opening and closing Quick Look windows
defaults write -g QLPanelAnimationDuration -float 0

# Showing the Dock
defaults write com.apple.dock autohide-time-modifier -float 0
defaults write com.apple.dock autohide-delay -float 0

# Don’t automatically rearrange Spaces based on most recent use
defaults write com.apple.dock mru-spaces -bool false

# Increase window resize speed for Cocoa applications
defaults write NSGlobalDomain NSWindowResizeTime -float 0.001

# Showing a toolbar or menu bar in full screen
defaults write -g NSToolbarFullScreenAnimationDuration -float 0

# Disable all window animations and the animation when opening the info window in Finder
defaults write com.apple.finder DisableAllAnimations -bool true

# Remove the spring loading delay for directories
defaults write NSGlobalDomain com.apple.springing.delay -float 0

# Kill all affected applications
killall Dock Finder SystemUIServer
