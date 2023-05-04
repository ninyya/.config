set nocompatible			" Disable vi compatibility
set ttyfast                 " Speed up scrolling in Vim

syntax enable               " Enables syntax highlighing based on filetype
set number                  " add line numbers
set relativenumber			" add relativenumbers
set cc=80                   " set an 80 column border for good coding style
set cursorline              " highlight current cursorline
set ruler

set cmdheight=2             " More space for displaying messages
set t_Co=256                " Support 256 colors
set conceallevel=0          " So that I can see `` in markdown files

filetype plugin indent on   "allow auto-indenting depending on file type
filetype plugin on

set iskeyword+=-            " treat dash separated words as a word text object"
set formatoptions-=c        " Stop newline continution of comments
set formatoptions-=r        " Stop newline continution of comments
set formatoptions-=o        " Stop newline continution of comments
set autoindent              " indent a new line the same amount as the line just typed

set hidden                  " Required to keep multiple buffers open multiple buffers
set splitbelow              " Horizontal splits will automatically be below
set splitright              " Vertical splits will automatically be to the right

set hlsearch                " highlight search 
set incsearch               " incremental search

set tabstop=4               " number of columns occupied by a tab 
set shiftwidth=4            " Change the number of space characters inserted for indentation
set softtabstop=4           " see multiple spaces as tabstops so <BS> does the right thing
set expandtab               " converts tabs to white space
set smarttab                " Makes tabbing smarter will realize you have 2 vs 4, however i do use 4 LUL
set smartindent             " Makes indenting smart
set autoindent              " Good auto indent
set showtabline=2           " Always show tabs

set whichwrap+=<,>,[,],h,l  " Adds linewrap navigation for left,right keys
set encoding=utf-8          " The encoding displayed
set fileencoding=utf-8      " The encoding written to file
set pumheight=10            " Makes popup menu smaller

set laststatus=2            " Always display the status line
set background=dark         " tell vim what the background color looks like
set signcolumn=yes          " Always show the signcolumn, otherwise it would shift the text each time
set updatetime=300          " Faster completion
set timeoutlen=100          " By default timeoutlen is 1000 ms
set clipboard=unnamedplus   " using system clipboard
set guifont=Cascadia\ Code\ PL "Fira\ Code\ Nerd\ Font''

au! BufWritePost $MYVIMRC source %      " auto source when writing to init.vm alternatively you can run :source $MYVIMRC
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

" You can't stop me
" When vim isn't started as sudo :w!! will save using sudo
cmap w!! w !sudo tee %



set scrolloff=1
set sidescroll=1
set sidescrolloff=2
set listchars=tab:>\ ,trail:-,extends:>,precedes:<,nbsp:+


