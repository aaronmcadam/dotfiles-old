" auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

call plug#begin('~/.config/nvim/autoload/plugged')

    " Better Comments
    Plug 'tpope/vim-commentary'
    " Repeat stuff
    Plug 'tpope/vim-repeat'
    " Surround
    Plug 'tpope/vim-surround'
    " Useful for React Commenting
    Plug 'suy/vim-context-commentstring'

    if exists('g:vscode')
      Plug 'machakann/vim-highlightedyank'
    else
      " Themes
      Plug 'mhartington/oceanic-next'

      " Enhance netrw
      Plug 'tpope/vim-vinegar'
      " Sneak
      Plug 'justinmk/vim-sneak'
      " Files
      Plug 'tpope/vim-eunuch'
      " Have the file system follow you around
      Plug 'airblade/vim-rooter'
      " auto set indent settings
      Plug 'tpope/vim-sleuth'
      " Better Syntax Support
      Plug 'sheerun/vim-polyglot'
      " Cool Icons
      Plug 'ryanoasis/vim-devicons'
      " Auto pairs for '(' '[' '{'
      Plug 'jiangmiao/auto-pairs'
      " Auto-close tags
      Plug 'alvan/vim-closetag'
      " Auto change tags
      Plug 'AndrewRadev/tagalong.vim'
      " Intellisense
      Plug 'neoclide/coc.nvim', {'branch': 'release'}
      " Snippets
      Plug 'honza/vim-snippets'
      " Status Line
      Plug 'vim-airline/vim-airline'
      Plug 'vim-airline/vim-airline-themes'
      " FZF
      Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
      Plug 'junegunn/fzf.vim'
      " Git
      Plug 'airblade/vim-gitgutter'
      Plug 'tpope/vim-fugitive'
      Plug 'jreybert/vimagit'
      Plug 'junegunn/gv.vim'
      Plug 'rhysd/git-messenger.vim'
      " GitHub
      Plug 'tpope/vim-rhubarb'
      " Easily Create Gists
      Plug 'mattn/vim-gist'
      Plug 'mattn/webapi-vim'
      " Terminal
      Plug 'voldikss/vim-floaterm'
      " Toggle between hybrid and absolute numbers depending on the mode
      Plug 'jeffkreeftmeijer/vim-numbertoggle'
      " Start Screen
      Plug 'mhinz/vim-startify'
      " See what keys do like in emacs
      Plug 'liuchengxu/vim-which-key'
      " Better tabline
      Plug 'mg979/vim-xtabline'
      " Testing
      Plug 'tpope/vim-dispatch'
      Plug 'vim-test/vim-test'
      " GraphQL
      Plug 'jparise/vim-graphql'
      " JSON with Comments (VSCode style)
      Plug 'kevinoid/vim-jsonc'
    endif

call plug#end()

" Automatically install missing plugins on startup
autocmd VimEnter *
  \  if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
  \|   PlugInstall --sync | q
  \| endif
