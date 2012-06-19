:syntax on
:set bg=dark
:set tabstop=3

" To have Vim jump to the last position when reopening a file
if has("autocmd")
   au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif

" To have Vim load indentation rules and plugins according to the detected filetype.
if has("autocmd")
   filetype plugin indent on
endif

:set syn=syntax-type
:set paste
:set ignorecase
:set smartcase
:set incsearch
:set showmatch
"indentation mode C
:set autoindent
:set cindent
:set cinoptions=>2,n2,}0
" indentations autres langages
:filetype plugin on
:set nocp
:filetype indent on
:set wildmenu
" numerotation des lignes
"':set nu
" Supprime les espaces en fin de ligne avant de sauver
:autocmd BufWrite * silent! %s/[\r \t]\+$//
:set hlsearch          " Surligne les resultats de recherche

execute 'source ' . $HOME . '/.vim/specific/php-doc.vim'

map <C-p> <Esc>:call PhpDocSingle()<CR>
imap <C-p> <Esc>:call PhpDocSingle()<CR>j
