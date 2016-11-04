set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

Plugin 'scrooloose/nerdtree'
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this lineet number

set number

autocmd VimEnter * NERDTree
autocmd VimEnter * wincmd p
nnoremap <silent> <C-D> :NERDTreeToggle<CR>
nnoremap <Tab> <c-w>w
nnoremap <bs>  <c-w><c-p>
nnoremap :D :call delete(expand('%')) \| bdelete!
set splitbelow
set splitright
noremap <F4> :set hlsearch! hlsearch?<CR>
nnoremap <CR> :nohlsearch<CR><CR>
inoremap <C-D> <Esc>:call setline(".",substitute(getline(line(".")),'^\s*',matchstr(getline(line(".")-1),'^\s*'),''))<CR>I
