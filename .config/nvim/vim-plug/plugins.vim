" auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  "autocmd VimEnter * PlugInstall
  "autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

if !exists('g:vscode')
    call plug#begin('~/.config/nvim/autoload/plugged')
        " Better Syntax Support
        Plug 'sheerun/vim-polyglot'
        " File Explorer
        "Plug 'scrooloose/NERDTree'
        Plug 'preservim/nerdtree' |
                    \ Plug 'Xuyuanp/nerdtree-git-plugin'
        " Auto pairs for '(' '[' '{'
        Plug 'jiangmiao/auto-pairs'
        " Themes
        Plug 'vim-airline/vim-airline'
        Plug 'vim-airline/vim-airline-themes'
        Plug 'tomasiser/vim-code-dark'
        " Code Completion
        Plug 'neoclide/coc.nvim', {'branch': 'release'}
        " Tags
        Plug 'alvan/vim-closetag'
        Plug 'tpope/vim-surround'
        Plug 'mattn/emmet-vim'
        " Commenting
        Plug 'tpope/vim-commentary'
        " Syntax highlighting
        Plug 'HerringtonDarkholme/yats.vim'
        Plug 'yuezk/vim-js'
        Plug 'maxmellon/vim-jsx-pretty'
        " Motions
        Plug 'easymotion/vim-easymotion'
        " Git
        Plug 'airblade/vim-gitgutter'
        Plug 'tpope/vim-fugitive'
        " Misc
        Plug 'junegunn/fzf.vim'
        Plug 'junegunn/goyo.vim'
        " Plug 'rrethy/vim-hexokinase', { 'do': 'make hexokinase' }
        Plug 'vimwiki/vimwiki'
        Plug 'tpope/vim-repeat'
        Plug 'dhruvasagar/vim-table-mode'
    call plug#end()
endif
