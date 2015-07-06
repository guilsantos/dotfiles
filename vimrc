" Make vim more useful {{{
set nocompatible
" }}}

" Syntax highlighting {{{
set t_Co=256
set background=dark
syntax on
" }}}
 
"......................................................................ARQUIVO
"" Sai fora na marra!
imap <F12> <esc>:wqa!<cr>
map <F12> :wqa!<cr>
" Abreviacoes uteis para sua sanidade mental
cab W w| cab Q q| cab Wq wq| cab wQ wq| cab WQ wq


" Copy e paste
nmap <F3> :set paste<CR>:r !pbpaste<CR>:set nopaste<CR>
imap <F3> <Esc>:set paste<CR>:r !pbpaste<CR>:set nopaste<CR>
nmap <F2> :.w !pbcopy<CR><CR>
vmap <F2> :w !pbcopy<CR><CR>

set number
set nowrap
set tabstop=4
set shiftwidth=4
set softtabstop=4
set background=dark
set clipboard=unnamed
set laststatus=2
set encoding=utf-8
set guifont=Inconsolata\ for\ Powerline.otf\ 10
set nocompatible

let g:airline_powerline_fonts = 1

" JSBEAUTIFY shorcuts
" for javascript
autocmd FileType javascript noremap <buffer>  <c-f> :call JsBeautify()<cr>
" for html
autocmd FileType html noremap <buffer> <c-f> :call HtmlBeautify()<cr>
" for css or scss
autocmd FileType css noremap <buffer> <c-f> :call CSSBeautify()<cr>

" Plugins {{{
filetype off

set rtp+=~/dotfiles/vim/bundle/Vundle.vim
call vundle#begin('~/dotfiles/vim/bundle')

Plugin 'gmarik/Vundle.vim'
" Adicionar outros plugins
" Plugin ''
Plugin 'maksimr/vim-jsbeautify' 
Plugin 'mattn/emmet-vim'
Plugin 'kien/ctrlp.vim'
Plugin 'digitaltoad/vim-jade'
Plugin 'ervandew/supertab'
Plugin 'initrc/eclim-vundle'
Plugin 'pangloss/vim-javascript'
Plugin 'ap/vim-css-color'
Plugin 'bling/vim-airline'
Plugin 'jelera/vim-javascript-syntax'
Plugin 'mustache/vim-mustache-handlebars'
Plugin 'tpope/vim-markdown',     { 'for': 'markdown' }
Plugin 'tpope/vim-fugitive'
Plugin 'powerline/fonts'
Plugin 'scrooloose/NERDTree'
Plugin 'scrooloose/NERDCommenter'
Plugin 'scrooloose/syntastic'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'airblade/vim-gitgutter'

call vundle#end()
filetype plugin indent on
" }}}
