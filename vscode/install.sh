#!/usr/bin/env bash

dotfilespath="$HOME/dotfiles"
UNAME=$(uname -s);

if [[ $UNAME == 'Linux' ]]; then
    curl https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > microsoft.gpg
    sudo mv microsoft.gpg /etc/apt/trusted.gpg.d/microsoft.gpg
    sudo sh -c 'echo "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main" > /etc/apt/sources.list.d/vscode.list'
    sudo apt-get update
    sudo apt-get install code
elif [[ $UNAME == 'Darwin' ]]; then
    rm -rf ~/Library/Application\ Support/Code/User/snippets
    ln -sf "$dotfilespath/vscode/settings.json" ~/Library/Application\ Support/Code/User/settings.json
    ln -sf "$dotfilespath/vscode/keybindings.json" ~/Library/Application\ Support/Code/User/keybindings.json
    ln -sf "$dotfilespath/vscode/snippets/" ~/Library/Application\ Support/Code/User/snippets
else 
    exit
fi
