for file in ~/.{bash_prompt,exports,aliases,functions}; do
    [ -r "$file" ] && source "$file"
done
unset file

if [ -f ~/dotfiles/completion/git-completion.bash ]; then
	.  ~/dotfiles/completion/git-completion.bash
fi

if [ -f ~/dotfiles/completion/maven-completion.bash ]; then
	. ~/dotfiles/completion/maven-completion.bash
fi

if [ -f ~/dotfiles/completion/npm-completion.bash ]; then
	. ~/dotfiles/completion/npm-completion.bash
fi

export NVM_DIR="/home/rafaellucio/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm

[[ -r $NVM_DIR/bash_completion ]] && . $NVM_DIR/bash_completion

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
