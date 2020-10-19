" vim-test

" make test commands execute using a split window
let test#strategy = {
  \ 'nearest': 'neovim',
  \ 'file':    'neovim',
  \ 'suite':   'neovim',
\}
let test#neovim#term_position = "vert botright 50"
