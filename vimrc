" pathogen
execute pathogen#infect()
syntax on
filetype plugin indent on


"conf for ycm c++ autocompletion (flags)
let g:ycm_global_ycm_extra_conf = '/home/tommy/.vim/bundle/YouCompleteMe/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py'
let g:ycm_confirm_extra_conf = 0
"let g:ycm_python_binary_path = '/home/tommy/miniconda2/bin/python'
let g:ycm_python_binary_path = '/usr/bin/python'

" NERD TREE
map <F8> :NERDTreeToggle<CR>

" size of a hard tabstop
set tabstop=4

" size of an "indent"
set shiftwidth=4

" always insert spaces (on tab)
set expandtab

" scheme colors
set background=dark
colorscheme hybrid

" confusing matching brackets
let loaded_matchparen = 1

set number

" easy pasting
set pastetoggle=<F2>
set completeopt-=preview
set mouse=a

" clang-formatter
map <C-K> :pyf ~/.vim/clang-format.py<cr>
imap <C-K> <c-o>:pyf ~/.vim/clang-format.py<cr>

noremap <C-l> :nohlsearch<CR><C-l>
noremap! <C-l> <ESC>:nohlsearch<CR><C-l>
