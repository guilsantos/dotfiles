#!/bin/bash


# to maintain cask .... 
#     brew update && brew upgrade brew-cask && brew cleanup && brew cask cleanup` 

export HOMEBREW_CASK_OPTS="--appdir=/Applications"

# dev
brew cask install alfred
brew cask install iterm2
brew cask install visual-studio-code
brew cask install java
brew cask install macvim
brew cask install virtualbox
brew cask install sts
brew cask install mysqlworkbench
brew cask install filezilla
brew cask install postman
# browsers
brew cask install google-chrome
brew cask install google-chrome-canary
brew cask install firefox

# less often
brew cask install vlc

brew cleanup --force
rm -f -r /Library/Caches/Homebrew/*
