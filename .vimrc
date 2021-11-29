" Vim-Plug
let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif
" Install vim-plug if not found
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
endif



" Plugins
call plug#begin('~/.vim/plugged/plugged')
" Custom startup screen
Plug 'mhinz/vim-startify'
Plug 'ycm-core/YouCompleteMe'
Plug 'itchyny/lightline.vim'
Plug 'tpope/vim-surround'
Plug 'Townk/vim-autoclose'
Plug 'preservim/nerdtree'
Plug 'fladson/vim-kitty'
call plug#end()

" My settings
syntax on
set laststatus=2
set noshowmode
set wildmenu
set showmatch
set incsearch
set hlsearch
set foldenable
set foldlevelstart=99
set foldmethod=syntax
set exrc
set secure
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set colorcolumn=110
set number relativenumber
set cursorline
highlight ColorColumn ctermbg=darkgray
nnoremap rc :vsplit $MYVIMRC<cr>
nnoremap <c-s-tab> :set expandtab!<cr>:set expandtab?<cr>
nnoremap <c-s-r> :so $MYVIMRC<cr>:echo "vimrc reloaded"<cr>
nnoremap ff :NERDTreeToggle<CR>:NERDTreeRefreshRoot<CR>
nnoremap <F3> :make clean!<cr>
nnoremap <F4> :make!<cr>
nnoremap fj <c-w>w


