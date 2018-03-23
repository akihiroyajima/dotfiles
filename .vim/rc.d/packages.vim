"*****************************************************************************
"" NeoBundle install packages
"*****************************************************************************
NeoBundle 'scrooloose/nerdtree'
NeoBundle 'tpope/vim-commentary'
NeoBundle 'tpope/vim-fugitive'
NeoBundle 'tpope/vim-surround'
NeoBundle 'christoomey/vim-tmux-navigator'
NeoBundle 'tomtom/tcomment_vim'
" NeoBundle 'osyo-manga/vim-over'
NeoBundle 'ctrlpvim/ctrlp.vim'
NeoBundle 'Shougo/vimfiler'
NeoBundle 'Shougo/unite.vim'
NeoBundle 'Shougo/unite-outline'
NeoBundle 'Shougo/neoyank.vim'
" NeoBundle 'Shougo/neomru.vim'
" NeoBundle 'LeafCage/yankround.vim'
NeoBundle 'terryma/vim-multiple-cursors'
NeoBundle 'kana/vim-submode'
" NeoBundle 'bling/vim-airline'
" NeoBundle 'vim-airline/vim-airline-themes'
NeoBundle 'edkolev/tmuxline.vim'
NeoBundle 'airblade/vim-gitgutter'
" NeoBundle 'sheerun/vim-polyglot'
NeoBundle 'vim-scripts/grep.vim'
" NeoBundle 'vim-scripts/CSApprox'
" NeoBundle 'vim-scripts/AnsiEsc.vim'
NeoBundle 'bronson/vim-trailing-whitespace'
NeoBundle 'Shougo/neocomplete.vim'
" NeoBundle 'open-browser.vim'
" NeoBundle 'Shougo/vimproc.vim', {
"       \ 'build' : {
"       \     'windows' : 'tools\\update-dll-mingw',
"       \     'cygwin' : 'make -f make_cygwin.mak',
"       \     'mac' : 'make -f make_mac.mak',
"       \     'unix' : 'make -f make_unix.mak',
"       \    },
"       \ }

if v:version > 702
  NeoBundle 'Shougo/vimshell.vim'
endif

"" Vim-Session
" NeoBundle 'xolox/vim-misc'
" NeoBundle 'xolox/vim-session'
NeoBundle 'thaerkh/vim-workspace'

"" Snippets
" NeoBundle 'SirVer/ultisnips'
" NeoBundle 'honza/vim-snippets'

"" Color
NeoBundle 'morhetz/gruvbox'
" NeoBundle 'chriskempson/vim-tomorrow-theme'
" NeoBundle 'w0ng/vim-hybrid'

"" Vim-Bootstrap Updater
" NeoBundle 'sherzberg/vim-bootstrap-updater'

" let g:vim_bootstrap_langs = 'javascript,ruby,python,php,html,go'
" let g:vim_bootstrap_editor = 'vim' " nvim or vim

"" Custom bundles
NeoBundle 'szw/vim-tags'
NeoBundle 'editorconfig/editorconfig-vim'
NeoBundle 'tyru/caw.vim.git'
NeoBundle 'Townk/vim-autoclose'
NeoBundle 'majutsushi/tagbar'
NeoBundle 'vim-syntastic/syntastic'
NeoBundle 'pmsorhaindo/syntastic-local-eslint.vim'
NeoBundleLazy 'tpope/vim-endwise', {
      \ 'autoload': { 'insert': 1, }}

"" Python Bundle
" NeoBundle 'davidhalter/jedi-vim'
NeoBundle 'Yggdroot/indentLine'

"" Javascript Bundle
NeoBundle 'pangloss/vim-javascript'
NeoBundle 'mxw/vim-jsx'
NeoBundle 'moll/vim-node'
NeoBundle 'mattn/jscomplete-vim'
NeoBundle 'leafgarland/typescript-vim'
" NeoBundle 'vim-scripts/jQuery'
" NeoBundle 'kchmck/vim-coffee-script'
" NeoBundleLazy 'othree/yajs.vim', {
"       \ 'autoload': { 'filetypes': ['javascript'] }}

"" HTML Bundle
" NeoBundle 'amirh/HTML-AutoCloseTag'
NeoBundle 'mattn/emmet-vim'
" NeoBundle 'taichouchou2/html5.vim'
NeoBundle 'hail2u/vim-css3-syntax'
NeoBundle 'cakebaker/scss-syntax.vim'
NeoBundle 'plasticboy/vim-markdown'

"" Go Lang Bundle
NeoBundle "fatih/vim-go"

"" PHP Bundle
NeoBundle 'violetyk/neocomplete-php.vim'
" NeoBundle 'evidens/vim-twig'

"" Ruby Bundle
NeoBundle 'vim-ruby/vim-ruby'
NeoBundle 'tpope/vim-rails'
NeoBundle 'tpope/vim-rake'
NeoBundle 'tpope/vim-projectionist'
NeoBundle 'tpope/vim-endwise'
NeoBundle 'thoughtbot/vim-rspec'
NeoBundle 'marcus/rsense'
NeoBundle 'supermomonga/neocomplete-rsense.vim'

call neobundle#end()

" Required:
filetype plugin indent on

NeoBundleCheck
