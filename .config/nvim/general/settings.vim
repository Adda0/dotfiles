" set leader key
let g:mapleader = "\<Space>"

" Basic settings
    syntax enable  " enables syntax highlighing
    set ignorecase
    set smartcase
    set number relativenumber
    set termguicolors
    " colorscheme codedark
     " colorscheme material

set hidden                              " Required to keep multiple buffers open multiple buffers
set nowrap                              " Display long lines as just one line
set encoding=utf-8  " the encoding displayed
set pumheight=10                        " Makes popup menu smaller
set fileencoding=utf-8  " the encoding written to file
set ruler              			            " Show the cursor position all the time
set cmdheight=2                         " More space for displaying messages
set iskeyword+=-                      	" treat dash separated words as a word text object"
set mouse=a  " enable your mouse

" Fix splitting
    set splitbelow  " horizontal splits will automatically be below
    set splitright  " vertical splits will automatically be to the right

set t_Co=256                            " Support 256 colors
set conceallevel=0                      " So that I can see `` in markdown files

" Autocompletion
    set wildmode=longest,list,full


" Tab Settings
    set tabstop=4  " insert 4 spaces for a tab
    set shiftwidth=4  " change the number of space characters inserted for indentation
    set softtabstop=4
    set smarttab  " makes tabbing smarter – will realize you have 2 vs 4
    set expandtab  " converts tabs to spaces
    set smartindent  " makes indenting smart
    set autoindent  " good auto indent

" don't give |ins-completion-menu| messages.
    set shortmess+=c

" always show signcolumns
    set signcolumn=yes

" Add status line support, for integration with other plugin, checkout `:h coc-status`
    set laststatus=0  " always display the status line
    set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}

set number                              " Line numbers

" Cursor line
    set cursorline  " enable highlighting of the current line
    set cursorcolumn

set background=dark                     " tell vim what the background color looks like
set showtabline=2                       " Always show tabs
set noshowmode                          " We don't need to see things like -- INSERT -- anymore

" some servers have issues with backup files
    set nobackup  " this is recommended by coc
    set nowritebackup  " this is recommended by coc

" From Coc Readme
    set updatetime=300  " faster completion

set timeoutlen=500                      " By default timeoutlen is 1000 ms
set formatoptions-=cro                  " Stop newline continution of comments
set clipboard=unnamedplus               " Copy paste between vim and everything else
"set autochdir                           " Your working directory will always be the same as your working directory

au! BufWritePost $MYVIMRC source %      " auto source when writing to init.vm alternatively you can run :source $MYVIMRC

" You can't stop me
cmap w!! w !sudo tee %
