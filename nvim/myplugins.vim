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
Plug 'vim-syntastic/syntastic'
Plug 'yegappan/mru'
Plug 'chrisbra/SudoEdit.vim'

Plug 'ycm-core/YouCompleteMe'

" PHP Plugins
Plug 'StanAngeloff/php.vim'
Plug 'phpactor/phpactor' ,  {'do': 'composer install', 'for': 'php'}
Plug 'vim-php/phpctags'
Plug 'phpactor/ncm2-phpactor'
Plug 'rayburgemeestre/phpfolding.vim'

" Require ncm2 and this plugin
Plug 'ncm2/ncm2'
Plug 'roxma/nvim-yarp'
call plug#end()
