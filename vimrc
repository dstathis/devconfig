au BufNewFile,BufRead Jenkinsfile setf groovy
filetype plugin indent on

call plug#begin('~/.vim/plugins/')
Plug 'kien/ctrlp.vim'
Plug 'nvie/vim-flake8'
Plug 'bling/vim-airline'
Plug 'jlfwong/vim-mercenary'
Plug 'zivyangll/git-blame.vim'
call plug#end()

set number
set bg=dark

set tabstop=8
set softtabstop=4
set shiftwidth=4
set expandtab
set smarttab

" Show tabs
set list listchars=tab:⟶\ 

" I think this is needed for git-blame.vim
nnoremap <Leader>s :<C-u>call gitblame#echo()<CR>
