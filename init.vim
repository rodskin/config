call plug#begin('~/nvim/plugged')
Plug 'rking/ag.vim'
Plug 'sjl/gundo.vim'
Plug 'sjl/badwolf', { 'as': 'badwolf' }
Plug 'kien/ctrlp.vim'
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'universal-ctags/ctags'
Plug 'itchyny/lightline.vim'
Plug 'amiorin/vim-project'
Plug 'mhinz/vim-startify'
Plug 'StanAngeloff/php.vim'
Plug 'stephpy/vim-php-cs-fixer'
Plug 'ncm2/ncm2'
Plug 'phpactor/phpactor'
Plug 'phpactor/phpactor'
Plug 'junegunn/fzf.vim'
Plug 'tpope/vim-fugitive'
Plug 'mhinz/vim-signify'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
call plug#end()

colorscheme badwolf" awesome colorscheme
syntax enable           " enable syntax processing
" no swap file! This is just annoying
set noswapfile
set tabstop=4       " number of visual spaces per TAB
set softtabstop=4   " number of spaces in tab when editing<Paste>
set expandtab       " tabs are spaces
set number              " show line numbers
set showcmd             " show command in bottom bar
set cursorline          " highlight current line<Paste>
filetype indent on      " load filetype-specific indent files
set wildmenu            " visual autocomplete for command menu
set lazyredraw          " redraw only when we need to.
set showmatch           " highlight matching [{()}]
set incsearch           " search as characters are entered
set hlsearch            " highlight matches
" turn off search highlight
nnoremap <leader><space> :nohlsearch<CR>
set foldenable          " enable folding
set foldlevelstart=10   " open most folds by default
set foldnestmax=10      " 10 nested fold max
" space open/closes folds
nnoremap <space> za
set foldmethod=indent   " fold based on indent level
let mapleader=","       " leader is comma
" toggle gundo
nnoremap <leader>u :GundoToggle<CR>
" highlight last inserted text
nnoremap gV `[v`]
" open ag.vim
nnoremap <leader>a :Ag
nnoremap <leader>T :call ToggleNumber()

"split navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>


" CtrlP settings
let g:ctrlp_match_window = 'bottom,order:ttb'
let g:ctrlp_switch_buffer = 0
let g:ctrlp_working_path_mode = 0
let g:ctrlp_user_command = 'ag %s -l --nocolor --hidden -g ""'

" toggle between number and relativenumber
function! ToggleNumber()
    if(&relativenumber == 1)
        set norelativenumber
        set number
    else
        set relativenumber
    endif
endfunc
