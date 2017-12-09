![Logo of the project](./dotfiles-logo.png)

# dotfiles - Mac/Linux
> Repositório concentra todos os arquivos de configuração necessário para o start-up da máquina desenvolvimento.

## Instalação

```shell
cd /home/seu-usuario
git clone --recursive https://github.com/rafaellucio/dotfiles.git
cd dotfiles
sh install.sh
```

## Desenvolvimento

### Arquivos de configuração: 

- [.gitmodules](./gitmodules)
- [.aliases](./aliases)
- [.bash_profiles](./bash_profiles)
- [.bash_prompt](./bash_prompt)
- [.bashrc](./bashrc)
- [.com.googlecode.iterm2.plist](./com.googlecode.iterm2.plist)
- [.exports](./exports)
- [.functions](./functions)
- [.gitattributes](./gitattributes)
- [.gitconfig](./gitconfig)
- [.gitignore](./gitignore)
- [.tmux.conf](./tmux.conf)
- [.vimrc](./vimrc)
- [.zshrc](./zshrc)

## Estrutura de arquivos

```
/home/seu-usuario/dotfiles                                              
   .
   |-bin
   |-brew
   |-completion
   |-debian
   |-dockerizing
   |---mongodb
   |---postgresql
   |-fluxbox
   |---backgrounds
   |---styles
   |-npm
   |-oh-my-zsh
   |-osx
   |---preferences
   |-ssh
   |-sublime
   |-terminator
   |-vim
   |---bundle
   |-----Vundle.vim
```