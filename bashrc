[ -n "$PS1" ] && source ~/.bash_profile

export NVM_DIR="/home/rafaellucio/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm

export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
