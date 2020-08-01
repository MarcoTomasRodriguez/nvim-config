" auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  " autocmd VimEnter * PlugInstall
  " autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

call plug#begin('~/.config/nvim/autoload/plugged')

    " Better Syntax Support
    Plug 'sheerun/vim-polyglot'

    " Auto pairs for '(' '[' '{'
    Plug 'jiangmiao/auto-pairs'

    " One dark theme
    Plug 'joshdick/onedark.vim'

    " Stable version of coc
    Plug 'neoclide/coc.nvim', {'branch': 'release'}

    " Airline
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes' 

    " Fzf
    Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
    Plug 'junegunn/fzf.vim'
    Plug 'airblade/vim-rooter'

    " Colorizer
    Plug 'norcalli/nvim-colorizer.lua'

    " Rainbow parentheses
    Plug 'junegunn/rainbow_parentheses.vim'

    " Startify
    Plug 'mhinz/vim-startify'
    
    " Git integration
    Plug 'mhinz/vim-signify'
    Plug 'tpope/vim-fugitive'
    Plug 'tpope/vim-rhubarb'
    Plug 'junegunn/gv.vim'

    " Buffer bye!
    Plug 'moll/vim-bbye'

    " Which key
    Plug 'liuchengxu/vim-which-key'

    " Commenter
    Plug 'preservim/nerdcommenter'

    " Zen mode
    Plug 'junegunn/goyo.vim'

call plug#end()
