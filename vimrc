au BufNewFile,BufRead Jenkinsfile setf groovy
filetype plugin indent on

call plug#begin('~/.vim/plugins/')
Plug 'kien/ctrlp.vim'
Plug 'nvie/vim-flake8'
Plug 'bling/vim-airline'
Plug 'jlfwong/vim-mercenary'
Plug 'zivyangll/git-blame.vim'
Plug 'Yggdroot/indentLine'
call plug#end()

set number
set bg=dark
set hlsearch

" Show tabs
set list listchars=tab:⟶\ 

" I think this is needed for git-blame.vim
nnoremap <Leader>s :<C-u>call gitblame#echo()<CR>

" Fix indentation for file types
autocmd FileType yaml setlocal ts=2 sts=2 sw=2 expandtab smarttab
autocmd FileType python setlocal ts=8 sts=4 sw=4 expandtab smarttab
