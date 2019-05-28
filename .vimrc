execute pathogen#infect()
syntax on
filetype plugin indent on

set mouse=a
set number
set tabstop=4
set sw=4
set hidden
set expandtab
set smarttab
set bs=2
set relativenumber
set ruler
set autoindent
set splitbelow splitright
set lbr
set wrap
set colorcolumn=110
set ruler
set cindent

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

"open nerdtree when open vim without specified file
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

let mapleader=","

let g:Ctrl_j = 'off'
"map <C-j> <C-W>j
map <Leader>j <C-W>j
"map <C-k> <C-W>k
map <Leader>k <C-W>k
"map <C-h> <C-W>h
map <Leader>h <C-W>h
"map <C-l> <C-W>l
map <Leader>l <C-W>l
nnoremap k kzz
nnoremap j jzz

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

" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
Plugin 'flazz/vim-colorschemes'
"Plugin 'Valloric/YouCompleteMe'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'othree/html5.vim'
Plugin 'hail2u/vim-css3-syntax.git'
Plugin 'othree/vim-javascript-syntax'
Plugin 'bling/vim-airline'
Plugin 'xolox/vim-misc'
Plugin 'xolox/vim-session'
Plugin 'scrooloose/nerdtree'
Bundle 'jistr/vim-nerdtree-tabs'
Plugin 'easymotion/vim-easymotion'
Bundle 'lepture/vim-jinja'
" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

"colorscheme material
"colorscheme xoria256
colorscheme monokain
"let g:ycm_global_ycm_extra_conf = '/root/.vim/bundle/YouCompleteMe/third_party/ycmd/.ycm_extra_conf.py'


" Toggle NERDTree
map <Leader>nt <plug>NERDTreeMirrorToggle<CR>
" Find currently opened file and select it
map <Leader>nf :NERDTreeTabsFind<CR>
" Open NERDTree in the current working directory
map <Leader>no :NERDTreeCWD<CR>
" Close NERDTree
map <Leader>nc :NERDTreeClose<CR>
let g:nerdtree_tabs_open_on_gui_startup = 0

map / <Plug>(easymotion-sn)
map / <Plug>(easymotion-tn)


" Highlight the cursor line in dark gray
set cursorline!

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

nnoremap <space> za

nnoremap <C-t> : call Toggle_transparent()<CR>
inoremap <C-d> <ESC>0v$yo<esc>p
nnoremap <Tab> ^hv0k$<BS>i<CR><Esc>
nmap <s-f> :setlocal foldmethod=indent<CR>


" Vim-ariline setting
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#fnamemod = ':t'
" Switch to the tab with the given number using the <Leader-number> shortcut
nmap <Leader>1 <Plug>AirlineSelectTab1
nmap <Leader>2 <Plug>AirlineSelectTab2
nmap <Leader>3 <Plug>AirlineSelectTab3
nmap <Leader>4 <Plug>AirlineSelectTab4
nmap <Leader>5 <Plug>AirlineSelectTab5
nmap <Leader>6 <Plug>AirlineSelectTab6
nmap <Leader>7 <Plug>AirlineSelectTab7
nmap <Leader>8 <Plug>AirlineSelectTab8
nmap <Leader>9 <Plug>AirlineSelectTab9

" Session setting
" Don't persist options and mappings because it can corrupt sessions
set sessionoptions-=options
" Don't persist the Syntastic error window
set sessionoptions-=blank
let g:session_default_overwrite = 0
let g:session_autoload = 'no'
let g:session_autosave = 'no'
let g:session_lock_enabled = 0
let g:session_command_aliases = 1
" Remap OpenSession command
nnoremap <Leader>os :OpenSession
" Remap SaveSession command
nnoremap <Leader>ss :SaveSession
" Remap DeleteSession command
nnoremap <Leader>ds :DeleteSession<CR>
" Remap CloseSession command
nnoremap <Leader>cs :CloseSession<CR>



autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
autocmd FileType html nnoremap <C-m> i<!DOCTYPE html><CR><html><CR><head><CR></head><CR><body><CR></body><CR></html>
