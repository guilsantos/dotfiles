#!/usr/bin/env bash

dotfilespath="$HOME/dotfiles"

if [ "$(uname)" != "Darwin" ]; then
    curl https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > microsoft.gpg
    mv microsoft.gpg /etc/apt/trusted.gpg.d/microsoft.gpg
    sh -c 'echo "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main" > /etc/apt/sources.list.d/vscode.list'
    apt-get update
    apt-get install code
fi

if [ "$(uname)" != "Linux" ]; then
    rm -rf ~/Library/Application\ Support/Code/User/snippets
    ln -sf "$dotfilespath/vscode/settings.json" ~/Library/Application\ Support/Code/User/settings.json
    ln -sf "$dotfilespath/vscode/keybindings.json" ~/Library/Application\ Support/Code/User/keybindings.json
    ln -sf "$dotfilespath/vscode/snippets/" ~/Library/Application\ Support/Code/User/snippets
fi