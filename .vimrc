"""""""""""""""""""""""""""""""""""""""""""
"
"   Name:          Joseph Lane 
"   Type:          .vimrc Configuration
"   Last Updated:  1/6/19
"   Email:         jlane.pro@gmail.com
"
"""""""""""""""""""""""""""""""""""""""""""
set nocompatible  


""" Vundle Configuration Start """

" Disable file type for vundle
filetype off      


" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Package Manager 
Plugin 'VundleVim/Vundle.vim'

" Directory Browswer
Plugin 'scrooloose/nerdtree'
" Syntax Cheker
Plugin 'scrooloose/syntastic'
" GIT Wrapper
Plugin 'tpope/vim-fugitive'
" Fuzzy Searcher
Plugin 'ctrlpvim/ctrlp.vim'
" Enhance Ruby Dev
Plugin 'vim-ruby/vim-ruby'
Plugin 'tpope/vim-rails'
" Auto Completer
Plugin 'Shougo/neocomplete.vim'
" Python Standards Lib 
Plugin 'nvie/vim-flake8'
" Code Snippets
Plugin 'garbas/vim-snipmate'
Plugin 'honza/vim-snippets'
" UI Related
Plugin 'altercation/vim-colors-solarized'

source /usr/local/lib/python2.7/site-packages/powerline/bindings/vim/plugin/powerline.vim
set laststatus=2
let g:Powerline_symbols = 'fancy'
set encoding=utf-8
set guifont=Menlo

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

""" Vundle Configuration End """

" Show linenumbers
set number
set ruler

" Enable folding
set foldmethod=indent
set foldlevel=99

" Enable System Clipboard
set clipboard=unnamed

" Set Property Tabs
set tabstop=4
set shiftwidth=4
set textwidth=79
set smarttab
set expandtab
set autoindent
set fileformat=unix

" Enable spell checking
:setlocal spell
:setlocal spell spelllang=en_us

" Enable highligting of the current line
set cursorline

" Set UTF
set encoding=utf-8

" OSX Backspace fix
set backspace=indent,eol,start

" Syntastic Configuration
"set statusline+=%#warningmsg#
"set statusline+=%{SyntasticStatuslineFlag()}
"set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1

set nocompatible      " We're running Vim, not Vi!
syntax on             " Enable syntax highlighting
filetype on           " Enable filetype detection
filetype indent on    " Enable filetype-specific indenting
filetype plugin on    " Enable filetype-specific plugins

"""""""""""""""""""""""""""""""""""""
"
"           RUBY SPECIFIC
"
""""""""""""""""""""""""""""""""""""""
autocmd FileType ruby setlocal expandtab shiftwidth=2 tabstop=2
autocmd FileType eruby setlocal expandtab shiftwidth=2 tabstop=2


"""""""""""""""""""""""""""""""""""""
"
"      CTRL+P / RIP GREP
"
""""""""""""""""""""""""""""""""""""""
if executable('rg')
    set grepprg=rg\ --color=never
    let g:ctrlp_user_command = 'rg %s --files --color=never --glob ""'
    let g:ctrlp_use_caching = 0
endif

set wildignore+=*/.git/*,*/tmp/*,*.swp

"""""""""""""""""""""""""""""""""""""
"
"  Mappings configuration
"
"""""""""""""""""""""""""""""""""""""
map <C-n> :NERDTreeToggle<CR>
map <C-m> :TagbarToggle<CR>

""" Save and run Python
nmap ,2 :w<CR>:!python2.7 %<CR>

""" Disable Syntastic By Default & map Toggle Switch
let g:syntastic_mode_map = { 'mode': 'passive', 'active_filetypes': [],'passive_filetypes': [] }
nnoremap <C-w>E :SyntasticCheck<CR> :SyntasticToggleMode<CR>

""" Enable folding with the spacebar
nnoremap <space> za

""" Python Configuration
let python_highlight_all=1
syntax on

""" Solarized Configuration
syntax enable
set background=dark
let g:solarized_termtrans=1
let g:solarized_termcolors=256
let g:solarized_contrast="high"
let g:solarized_visibility="high"
colorscheme solarized
