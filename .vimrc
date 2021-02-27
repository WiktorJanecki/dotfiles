set nocompatible              " be iMproved, required
filetype off                  " required

set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'ericcurtin/CurtineIncSw.vim' " swap header/source files
Plugin 'scrooloose/nerdtree'
Plugin 'vim-airline/vim-airline'
Plugin 'wakatime/vim-wakatime'
Plugin 'kien/ctrlp.vim'
Plugin 'xavierd/clang_complete'
Plugin 'crusoexia/vim-monokai'
Plugin 'octol/vim-cpp-enhanced-highlight'
Plugin 'ervandew/supertab'
call vundle#end()            " required
filetype plugin indent on    " required



map go :call CurtineIncSw()<CR> 
nnoremap <C-b> :NERDTreeToggle<CR> 
:imap jk <Esc>
:imap kj <Esc>
map <silent> <F9> :call system('./compile.sh')<CR>

set tabstop=4
set shiftwidth=4
set expandtab
" set termguicolors

syntax on
colorscheme monokai

let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
let g:clang_library_path='/usr/lib64/libclang.so'
let g:clang_close_preview = 1

" ########################## SUPER DUPER ARGUMENT COMPLETION #################
set conceallevel=2
set concealcursor=vin
let g:clang_snippets=1
let g:clang_conceal_snippets=1
" The single one that works with clang_complete
let g:clang_snippets_engine='clang_complete'

" Complete options (disable preview scratch window, longest removed to aways
" show menu)
set completeopt=menu,menuone

" Limit popup menu height
set pumheight=20

" SuperTab completion fall-back 
let g:SuperTabDefaultCompletionType='<c-x><c-u><c-p>'



