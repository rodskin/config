call plug#begin('/home/fgilles/nvim/plugged')
Plug 'rking/ag.vim'
Plug 'sjl/gundo.vim'
Plug 'sjl/badwolf', { 'as': 'badwolf' }
Plug 'kien/ctrlp.vim'
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'universal-ctags/ctags'
Plug 'itchyny/lightline.vim'
Plug 'amiorin/vim-project'
Plug 'mhinz/vim-startify'
Plug 'stephpy/vim-php-cs-fixer'
Plug 'junegunn/fzf.vim'
Plug 'tpope/vim-fugitive'
Plug 'mhinz/vim-signify'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'nelsyeung/twig.vim'
Plug 'preservim/nerdtree'
Plug 'StanAngeloff/php.vim'
" Include Phpactor
Plug 'phpactor/phpactor' ,  {'do': 'composer install', 'for': 'php'}

" Require ncm2 and this plugin
Plug 'ncm2/ncm2'
Plug 'roxma/nvim-yarp'
Plug 'phpactor/ncm2-phpactor'
call plug#end()
