" set the right cursor shape for WSL
if &term =~? 'rxvt' || &term =~? 'xterm' || &term =~? 'st-'
    " 1 or 0 -> blinking block
    " 2 -> solid block
    " 3 -> blinking underscore
    " 4 -> solid underscore
    " Recent versions of xterm (282 or above) also support
    " 5 -> blinking vertical bar
    " 6 -> solid vertical bar
    " Insert Mode
    let &t_SI .= "\<Esc>[6 q"
    " Normal Mode
    let &t_EI .= "\<Esc>[2 q"
endif

call plug#begin('~/.config/nvim/plugged')
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'ctrlpvim/ctrlp.vim'
call plug#end()

let g:coc_global_extensions = [
  \ 'coc-tsserver',
  \ 'coc-eslint',
  \ ]
set number
set expandtab
set smarttab
set autoindent
set smartindent
set hlsearch
set wildmode=longest,list

set tabstop=2
set shiftwidth=2
set formatoptions+=r

nnoremap j gj
nnoremap gj j
nnoremap k gk
nnoremap gk k
filetype plugin indent on

nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

nmap <space>e :CocCommand explorer --open-action-strategy vsplit<CR>

syntax on
