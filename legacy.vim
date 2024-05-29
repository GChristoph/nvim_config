" open same file in vertical/horizonal splits
nnoremap <silent> ;vmp :leftabove vsplit %<CR>
nnoremap <silent> ;xmp :leftabove split %<CR>

" faster updates!
set updatetime=100

" faster updates!
set updatetime=100

" history
set undodir=~/.cache/nvim/undodir
set undofile

" automatically read on change
set autoread

" ;w is save
noremap <silent> ;w :update<CR>

" Colorscheme
set termguicolors
let g:gruvbox_contrast_dark='hard'
let g:gruvbox_contrast_light='hard'
colorscheme gruvbox
hi LspCxxHlGroupMemberVariable guifg=#83a598

" Remap C-c to <esc>
nmap <c-c> <esc>
imap <c-c> <esc>
vmap <c-c> <esc>
omap <c-c> <esc>

" Syntax highlighting
syntax on

" Position in code
set number
set ruler

" Don't make noise
set visualbell

" default file encoding
set encoding=utf-8

" Line wrap
set wrap

set noexpandtab
set autoindent
set smartindent

" Highlight search results
" set hlsearch
" set incsearch

" Mouse support
set mouse=a

" disable backup files
set nobackup
set nowritebackup
