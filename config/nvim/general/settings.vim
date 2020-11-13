syntax enable                           " Enables syntax highlighting
set hidden                              " Required to keep multiple buffers open multiple buffers
set nowrap                              " Display long lines as just one line
set encoding=utf-8                      " The encoding displayed
set fileencoding=utf-8                  " The encoding written to file
set ruler              			            " Show the cursor position all the time
set splitbelow                          " Horizontal splits will automatically be below
set splitright                          " Vertical splits will automatically be to the right
set t_Co=256                            " Support 256 colors
set tabstop=2                           " Insert 2 spaces for a tab
set shiftwidth=2                        " Change the number of space characters inserted for indentation
set smarttab                            " Makes tabbing smarter will realize you have 2 vs 4
set expandtab                           " Converts tabs to spaces
set smartindent                         " Makes indenting smart
set autoindent                          " Good auto indent
set laststatus=2                        " Always display the status line
set cursorline                          " Enable highlighting of the current line
set termguicolors                       " Enable true color
set background=dark                     " tell vim what the background color looks like
set number relativenumber               " Hybrid line numbers (absolute and relative)
set nobackup                            " This is recommended by coc
set nowritebackup                       " This is recommended by coc
set cmdheight=2                         " Give more space for displaying messages.
set noswapfile                          " Turn off the swap file
set colorcolumn=80                      " Show column
set cursorcolumn                        " Highlight current column
set cursorline                          " Highlight current line
set clipboard=unnamed                   " Copy and paste between vim and the system

" Having a longer `updatetime` (default is 4000 ms = 4 s) leads to noticeable
" delays and poor user experience.
set updatetime=300

" Open new split panes to right and bottom, which feels more natural.
set splitbelow
set splitright

" strip trailing whitespace on save
autocmd BufWritePre * :%s/\s\+$//e

" Set relativenumber for netrw buffers
let g:netrw_bufsettings = "noma nomod nu nobl nowrap ro"

" Allow netrw to remove non-empty local directories
let g:netrw_localrmdir="rm -r"

" automatically rebalance windows on vim resize
autocmd VimResized * :wincmd =
