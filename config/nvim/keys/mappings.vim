" map leader key
let mapleader=" "
nnoremap <Space> <Nop>

" make it easier to write Ex commands
nnoremap ; :

" Map Ctrl + p to open fuzzy find (FZF)
" TODO: Remove this when you configure FZF properly
nnoremap <c-p> :Files<cr>

" Better indenting
vnoremap < <gv
vnoremap > >gv

" Better nav for omnicomplete
inoremap <expr> <c-j> ("\<C-n>")
inoremap <expr> <c-k> ("\<C-p>")

" Better window navigation
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" Terminal window navigation
tnoremap <C-h> <C-\><C-N><C-w>h
tnoremap <C-j> <C-\><C-N><C-w>j
tnoremap <C-k> <C-\><C-N><C-w>k
tnoremap <C-l> <C-\><C-N><C-w>l
inoremap <C-h> <C-\><C-N><C-w>h
inoremap <C-j> <C-\><C-N><C-w>j
inoremap <C-k> <C-\><C-N><C-w>k
inoremap <C-l> <C-\><C-N><C-w>l
tnoremap <Esc> <C-\><C-n>

" Use alt + hjkl to resize windows
map <M-j> :resize -2<CR>
map <M-k> :resize +2<CR>
map <M-h> :vertical resize -2<CR>
map <M-l> :vertical resize +2<CR>

" Force a protected file to be saved
cmap w!! w !sudo tee %

