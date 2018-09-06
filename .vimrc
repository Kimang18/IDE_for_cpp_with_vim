execute pathogen#infect()
syntax on
filetype plugin indent on

set mouse=a
set number
set tabstop=2
set colorcolumn=110

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
set encoding=utf-8
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
" Plugin 'file:///home/gmarik/path/to/plugin'

" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}
Plugin 'flazz/vim-colorschemes'
Plugin 'Valloric/YouCompleteMe'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'othree/html5.vim'
Plugin 'hail2u/vim-css3-syntax.git'
Plugin 'othree/vim-javascript-syntax'
" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

colorscheme material
colorscheme xoria256
let g:ycm_global_ycm_extra_conf = '/root/.vim/bundle/YouCompleteMe/third_party/ycmd/.ycm_extra_conf.py'

let mapleader=","

" Toggle NERDTree
map <Leader>nt <plug>NERDTreeMirrorToggle<CR>
" Find currently opened file and select it
map <Leader>nf :NERDTreeTabsFind<CR>
" Open NERDTree in the current working directory
map <Leader>no :NERDTreeCWD<CR>
" Close NERDTree
map <Leader>nc :NERDTreeClose<CR>
let g:nerdtree_tabs_open_on_gui_startup = 0

let t:is_transparent = 0
function Toggle_transparent()
				if t:is_transparent == 0
								hi Normal guibg=NONE ctermbg=NONE

								let t:is_transparent = 1
				else
								set background=dark
								let t:is_transparent = 0
				endif
endfunction

nnoremap <C-t> : call Toggle_transparent()<CR>
nnoremap <C-d> 0v$yo<esc>p
nnoremap <Tab> ^<C-h>v0<BS>di<CR><esc>j
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
autocmd FileType html nnoremap <C-m> i<!DOCTYPE html><CR><html><CR><head><CR></head><CR><body><CR></body><CR></html>
