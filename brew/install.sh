#!/bin/bash

ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

brew update
brew upgrade

brew tap caskroom/cask
brew tap caskroom/versions

sh ./brew.sh
sh ./cask.sh
