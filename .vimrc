syntax on
set number
set tabstop=2
set shiftwidth=2
set expandtab

set nu number
"set rnu relativenumber
set clipboard=unnamed

nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l
nnoremap <Leader>b :ls<CR>:b<Space>

set backspace=indent,eol,start

filetype plugin on

call plug#begin('~/.vim/plugged')
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
Plug 'airblade/vim-gitgutter'
Plug 'vim-airline/vim-airline'
Plug 'tpope/vim-fugitive'
call plug#end()

let g:netrw_banner=0       
"let g:netrw_browse_split=4
"let g:netrw_altv=1      
let g:netrw_liststyle=3 
"let g:netrw_list_hide=netrw_gitignore#Hide()
"let g:netrw_list_hide.=',\(^\|\s\s\)\zs\.\S\+'
let g:netrw_winsize = 25
let g:netrw_preview = 1
let g:netrw_keepdir= 0
"set autochdir
let g:gitgutter_override_sign_column_highlight = 1
highlight clear SignColumn
highlight GitGutterAdd ctermfg=2
highlight GitGutterChange ctermfg=3
highlight GitGutterDelete ctermfg=1
highlight GitGutterChangeDelete ctermfg=4

