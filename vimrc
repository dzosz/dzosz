" pathogen
execute pathogen#infect()
filetype plugin indent on

syntax on
set encoding=utf-8

"conf for ycm c++ autocompletion (flags)
let g:ycm_global_ycm_extra_conf = '/home/tommy/.ycm_extra_conf.py'
" need confirm config
let g:ycm_confirm_extra_conf = 0
let g:ycm_use_clangd = 1
" avoid anaconda
let g:ycm_python_binary_path = 'python3'
let g:ycm_seed_identifiers_with_syntax=1
let g:ycm_collect_identifiers_from_tags_files = 1

let g:ycm_always_populate_location_list = 0
let g:ycm_auto_trigger=1
let g:ycm_enable_diagnostic_highlighting=1
let g:ycm_enable_diagnostic_signs=1
let g:ycm_max_diagnostics_to_display=1000
let g:ycm_min_num_identifier_candidate_chars=0
let g:ycm_min_num_of_chars_for_completion=2
let g:ycm_open_loclist_on_ycm_diags=1
let g:ycm_show_diagnostics_ui=1


" NERD TREE
map <C-n> :NERDTreeToggle %<CR>
let NERDTreeIgnore=['\.pyc']

"TagBar
nmap <F9> :TagbarToggle<CR>

" FZF aka NEW CTRLP
map <C-p> :FZF<CR>

" size of a hard tabstop
set tabstop=4
" size of an "indent"
set shiftwidth=4
" always insert spaces (on tab)
set expandtab
set autoindent
set incsearch
set nobackup
set noswapfile
set nocindent " fucked up templates indentation
set smartindent
set wildmode=longest,list,full


" scheme colors
set background=dark
colorscheme hybrid
"set colorcolumn=79

" confusing matching brackets
let loaded_matchparen = 1

set number

" easy pasting
set pastetoggle=<F2>
" never pop up an annoying bottom tab
set completeopt-=preview
set mouse=a
set cursorline
" REQUIRED FOR MOUSE RESIZING
"set ttymouse=xterm2
let g:NERDTreeMouseMode=1

" clang-formatter
"map <buffer> <C-K> :pyf ~/.vim/clang-format.py<cr>
"imap <buffer> <C-K> :pyf ~/.vim/clang-format.py<cr>
autocmd FileType cpp map <buffer> <C-K> :py3f ~/.vim/clang-format3.py<cr>
autocmd FileType cpp imap <buffer> <C-K> :py3f ~/.vim/clang-format3.py<cr>
autocmd FileType rust nmap <buffer> <C-K> :%! rustfmt --edition 2018<cr>
"autocmd FileType cpp imap <C-K> <c-o>:pyf ~/.vim/clang-format.py<cr>

" ycm goto \ + g
nnoremap <leader>g :YcmCompleter GoToDefinitionElseDeclaration<CR>

" unselect search
noremap <C-l> :nohlsearch<CR><C-l>
noremap! <C-l> <ESC>:nohlsearch<CR><C-l>

" airline
" show always tab
set laststatus=2

" indent with chars
let g:indentLine_char = '.'

set clipboard=unnamed
" gvim clipboard is the same as system clipboard
set clipboard=unnamedplus

" remove whitespace on save
"autocmd BufWritePre * :%s/\s\+$//e
" wscript syntax
au BufRead,BufNewFile wscript setfiletype python

" Turn backup off, since most stuff is in SVN, git et.c anyway...
set nobackup
set nowb
set noswapfile

" Treat long lines as break lines (useful when moving around in them)
map j gj
map k gk

" Syntastic
"set statusline+=%#warningmsg#
"set statusline+=%{SyntasticStatuslineFlag()}
"set statusline+=%*
"let g:syntastic_aggregate_errors = 1
""let g:syntastic_always_populate_loc_list=1
""let g:syntastic_auto_loc_list=1
"let g:syntastic_check_on_open=0
"let g:syntastic_check_on_wq = 0

"better multilines
set linebreak
set display+=lastline

" fix if colors do not appear
set termguicolors

" open ctag in tab/vertical split
map <C-\> :tab split<CR>:exec("tag ".expand("<cword>"))<CR>
map <leader><C-\> :vsp <CR>:exec("tag ".expand("<cword>"))<CR>

" diff and edit current file with vim-fugitive
map <C-f> :tab Gdiff<CR>

set undofile
