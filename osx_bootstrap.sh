#!/usr/bin/env bash
#
# Bootstrap script for setting up a new OSX machine
#
# This should be idempotent so it can be run multiple times.
#
# Notes:
#
# - If installing full Xcode, it's better to install that first from the app
#   store before running the bootstrap script. Otherwise, Homebrew can't access
#   the Xcode libraries as the agreement hasn't been accepted yet.
#
# Modified from
# - https://gist.github.com/codeinthehole/26b37efa67041e1307db
#

echo "Starting bootstrapping"

# Check for Homebrew, install if we don't have it
if test ! $(which brew); then
    echo "Installing homebrew..."
    ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

# Update homebrew recipes
brew update

# Install Bash 4
# brew install bash

PACKAGES=(
    autoconf
    automake
    bash-completion
    git
    icdiff
    markdown
    npm
    openssl
    pkg-config
    postgresql
    python
    python3
    rbenv
    readline
    ruby
    ruby-build
    sqlite
    the_silver_searcher
    tmux
    tree
    vim
    wget
)

echo "Installing packages..."
brew install ${PACKAGES[@]}

echo "Cleaning up..."
brew cleanup

# echo "Installing cask..."
# brew install caskroom/cask/brew-cask

# CASKS=(
#     1password
#     atom
#     dropbox
#     filezilla
#     firefox
#     google-chrome
#     intellij-idea
#     iterm2
#     slack
#     spectacle
#     teamviewer
#     vlc
# )

# echo "Installing cask apps..."
# brew cask install ${CASKS[@]}

# echo "Installing fonts..."
# brew tap caskroom/fonts
# FONTS=(
#     font-inconsolata-for-powerline
# )
# brew cask install ${FONTS[@]}

echo "Installing Ruby gems"
RUBY_GEMS=(
    bundler
    cocoapods
)
sudo gem install ${RUBY_GEMS[@]}

echo "Configuring OSX..."

# Set fast key repeat rate
defaults write NSGlobalDomain KeyRepeat -int 0

# Require password as soon as screensaver or sleep mode starts
# defaults write com.apple.screensaver askForPassword -int 1
# defaults write com.apple.screensaver askForPasswordDelay -int 0

# Enable tap-to-click
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad Clicking -bool true
defaults -currentHost write NSGlobalDomain com.apple.mouse.tapBehavior -int 1

echo "Creating folder structure..."
# [[ ! -d Dev ]] && mkdir Dev

echo "Downloading Dot Files"
# git clone https://github.com/MikeDanaher/dotfiles.git ~/Dev/dotfiles

echo "Setup complete. Run install script to complete dot file installation."
