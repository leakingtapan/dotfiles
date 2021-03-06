set nocompatible              " be iMproved, required
set backspace=2
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" powerline statue line
Plugin 'powerline/powerline', {'rtp': 'powerline/bindings/vim/'}

" Solarized color
Plugin 'altercation/vim-colors-solarized'

" Scala 
"Plugin 'derekwyatt/vim-scala'

" Go
Plugin 'fatih/vim-go'

" vim tmux navigation
Plugin 'christoomey/vim-tmux-navigator'

" Nerd Tree
Plugin 'scrooloose/nerdtree'

" ctrlp
Plugin 'kien/ctrlp.vim'

" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'

Plugin 'shougo/neocomplete.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin from http://vim-scripts.org/vim/scripts.html
"Plugin 'L9'
" Git plugin not hosted on GitHub
"Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
"Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
"Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Avoid a name conflict with L9
"Plugin 'user/L9', {'name': 'newL9'}

" All of your Plugins must be added before the following line
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
" Put your non-Plugin stuff after this line
set laststatus=2
set number
set hlsearch
set autochdir
let mapleader=","

set tabstop=4
set expandtab
set shiftwidth=4

" set indent for yaml file
autocmd FileType yaml setlocal ts=2 sts=2 sw=2 expandtab

" using F3 to switch between paste
set pastetoggle=<F3>

syntax enable
set background=dark
colorscheme solarized

" short cut open nerd tree
map <C-n> :NERDTreeToggle<CR>

set clipboard=unnamed

" vim-go key map
au FileType go nmap <leader>r <Plug>(go-run)
au FileType go nmap <leader>b <Plug>(go-build)
au FileType go nmap <leader>t <Plug>(go-test)
au FileType go nmap <leader>c <Plug>(go-coverage)

" vim-go definition
au FileType go nmap <Leader>ds <Plug>(go-def-split)
au FileType go nmap <Leader>dv <Plug>(go-def-vertical)
au FileType go nmap <Leader>dt <Plug>(go-def-tab)

" vim-go documentation
au FileType go nmap <Leader>gd <Plug>(go-doc)
au FileType go nmap <Leader>gv <Plug>(go-doc-vertical)

au FileType go nmap <Leader>s <Plug>(go-implements)
" vim-go auto import
let g:go_fmt_command = "goimports"

au BufNewFile,BufRead *.py
    \ set tabstop=4 |
    \ set softtabstop=4 |
    \ set shiftwidth=4 |
    \ set textwidth=79 |
    \ set expandtab |
    \ set autoindent |
    \ set fileformat=unix |


" neocomplete setups
" Disable AutoComplPop.
let g:acp_enableAtStartup = 0
" Use neocomplete.
let g:neocomplete#enable_at_startup = 1
" Use smartcase.
let g:neocomplete#enable_smart_case = 1
" Set minimum syntax keyword length.
let g:neocomplete#sources#syntax#min_keyword_length = 3
