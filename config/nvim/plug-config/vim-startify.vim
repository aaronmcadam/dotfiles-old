" vim-startify

let g:startify_custom_header = [
        \ '       _   __                _         ',
        \ '      / | / /__  ____ _   __(_)___ ___ ',
        \ '     /  |/ / _ \/ __ \ | / / / __ `__ \',
        \ '    / /|  /  __/ /_/ / |/ / / / / / / /',
        \ '   /_/ |_/\___/\____/|___/_/_/ /_/ /_/ ',
        \]
let g:startify_session_dir = "~/.config/nvim/session"
let g:startify_lists = [
          \ { 'type': 'files',     'header': ['   Files']                        },
          \ { 'type': 'dir',       'header': ['   Current Directory '. getcwd()] },
          \ { 'type': 'sessions',  'header': ['   Sessions']                     },
          \ { 'type': 'bookmarks', 'header': ['   Bookmarks']                    },
          \ ]
let g:startify_bookmarks = [
            \ { 'h': '~/workspace/hydra' },
            \ { 'd': '~/dotfiles' },
            \ { 'c': '~/dotfiles/config/nvim' },
            \ { 'i': '~/dotfiles/config/nvim/init.vim' },
            \ { 'f': '~/dotfiles/config/fish' },
            \ { 'o': '~/dotfiles/config/omf' },
            \ '~/workspace',
            \ '~/reference-implementations',
            \ '~/learning',
            \ ]
" Automatically restart a session if it exists in the current directory
let g:startify_session_autoload = 1
" Let Startify take care of buffers
let g:startify_session_delete_buffers = 1
" Similar to vim-rooter
let g:startify_change_to_vcs_root = 1
" Use unicode
let g:startify_fortune_use_unicode = 1
" Automatically update sessions
let g:startify_session_persistence = 1
" Clean up empty buffers on quit
let g:startify_enable_special = 0
