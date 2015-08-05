" Make vim more useful {{{
set nocompatible
" }}}

" Syntax highlighting {{{
set t_Co=256
syntax on
" }}}

iab ral Rafael Antonio Lucio<rafaelantoniolucio@gmail.com>

"......................................................................ARQUIVO
"" Sai fora na marra!
imap <F12> <esc>:wqa!<cr>
map <F12> :wqa!<cr>
" Abreviacoes-uteis para sua sanidade mental
cab W w| cab Q q| cab Wq wq| cab wQ wq| cab WQ wq


" Copy e paste
nmap <F3> :set paste<CR>:r !pbpaste<CR>:set nopaste<CR>
imap <F3> <Esc>:set paste<CR>:r !pbpaste<CR>:set nopaste<CR>
nmap <F2> :.w !pbcopy<CR><CR>
vmap <F2> :w !pbcopy<CR><CR>

hi    Search ctermbg=green ctermfg=black
hi IncSearch ctermbg=black ctermfg=cyan
set is hls ic scs  "opções espertas de busca

set number
set nowrap
set tabstop=4
set shiftwidth=4
set softtabstop=4
set clipboard=unnamed
set laststatus=2
set encoding=utf-8
set guifont=Inconsolata\ for\ Powerline:h15
let g:Powerline_symbols = 'fancy'
set fillchars+=stl:\ ,stlnc:\
set term=xterm-256color
set termencoding=utf-8
set background=dark

if has("gui_running")
	let s:uname = system("uname")
	if s:uname == "Darwin\n"
		set guifont=Inconsolata\ for\ Powerline:h15
	endif
endif

" Macros
let @q='0f,xxd$a</a>0i<a href="pa">j@q'

let g:airline_powerline_fonts = 1

" JSBEAUTIFY shorcuts
" for javascript
autocmd FileType javascript noremap <buffer>  <c-f> :call JsBeautify()<cr>
" for html
autocmd FileType html noremap <buffer> <c-f> :call HtmlBeautify()<cr>
" for css or scss
autocmd FileType css noremap <buffer> <c-f> :call CSSBeautify()<cr>

set rtp+=~/dotfiles/vim/bundle/powerline/powerline/bindings/vim
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
Plugin 'powerline/powerline'
Plugin 'yosiat/oceanic-next-vim'
Plugin 'pangloss/vim-javascript'
Plugin 'ap/vim-css-color'
Plugin 'jelera/vim-javascript-syntax'
Plugin 'tpope/vim-markdown',     { 'for': 'markdown' }
Plugin 'tpope/vim-fugitive'
Plugin 'airblade/vim-gitgutter'

call vundle#end()
filetype plugin indent on
" }}}

" colo OceanicNext
