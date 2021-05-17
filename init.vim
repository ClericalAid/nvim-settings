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
