"*****************************************************************************
"" NeoBundle core
"*****************************************************************************

if has('vim_starting')
  set nocompatible  " Be iMproved

  " Required:
  set runtimepath+=~/.vim/bundle/neobundle.vim/
endif

let neobundle_readme=expand('~/.vim/bundle/neobundle.vim/README.md')

if !filereadable(neobundle_readme)
  echo "Installing NeoBundle..."
  echo ""
  silent !mkdir -p ~/.vim/bundle
  silent !git clone https://github.com/Shougo/neobundle.vim ~/.vim/bundle/neobundle.vim/
  let g:not_finsh_neobundle = "yes"

  " Run shell script if exist on custom select language

  silent !\curl -sSL https://raw.githubusercontent.com/avelino/vim-bootstrap/master/vim_template/langs/c/c.sh | bash -s stable

  silent !\curl -sSL https://raw.githubusercontent.com/avelino/vim-bootstrap/master/vim_template/langs/python/python.sh | bash -s stable

  silent !\curl -sSL https://raw.githubusercontent.com/avelino/vim-bootstrap/master/vim_template/langs/javascript/javascript.sh | bash -s stable

  silent !\curl -sSL https://raw.githubusercontent.com/avelino/vim-bootstrap/master/vim_template/langs/html/html.sh | bash -s stable

  silent !\curl -sSL https://raw.githubusercontent.com/avelino/vim-bootstrap/master/vim_template/langs/perl/perl.sh | bash -s stable

  silent !\curl -sSL https://raw.githubusercontent.com/avelino/vim-bootstrap/master/vim_template/langs/haskell/haskell.sh | bash -s stable

  silent !\curl -sSL https://raw.githubusercontent.com/avelino/vim-bootstrap/master/vim_template/langs/go/go.sh | bash -s stable

  silent !\curl -sSL https://raw.githubusercontent.com/avelino/vim-bootstrap/master/vim_template/langs/php/php.sh | bash -s stable

  silent !\curl -sSL https://raw.githubusercontent.com/avelino/vim-bootstrap/master/vim_template/langs/ruby/ruby.sh | bash -s stable

endif

" Required:
call neobundle#begin(expand('~/.vim/bundle/'))

" Let NeoBundle manage NeoBundle
" Required:
NeoBundleFetch 'Shougo/neobundle.vim'

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

"*****************************************************************************
"" Basic Setup
"*****************************************************************************"
"" Encoding
set encoding=utf-8
set fileencoding=utf-8
set fileencodings=iso-2022-jp,euc-jp,sjis,utf-8
set fileformats=unix,dos,mac

"" Fix backspace indent
set backspace=indent,eol,start

"" Map leader to Space
let mapleader=' '
" noremap <Space> <Nop>

"" Enable hidden buffers
set hidden

"" Searching
set hlsearch
set ignorecase
set smartcase

"" Encoding
set bomb
set binary
set ttyfast

"" Directories for swap files
set nobackup
set noswapfile

set fileformats=unix,dos,mac
set showcmd
set shell=/bin/sh

set completeopt=menuone

"*****************************************************************************
"" Visual Settings
"*****************************************************************************
syntax enable
set ruler
set number
set background=dark
set linespace=2
let no_buffers_menu=1
" solarized options
" let g:solarized_visibility = "high"
" let g:solarized_contrast = "high"

if !exists('g:not_finsh_neobundle')
  colorscheme gruvbox
endif

" set cursorline
set mousemodel=popup
set t_Co=256
set linespace=0

if $TERM_PROGRAM =~ "iTerm"
  " let &t_SI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=1\x7\<Esc>\\"
  " let &t_EI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=0\x7\<Esc>\\"
endif

if has("gui_running")
  if has("gui_mac") || has("gui_macvim")
    set guifont=SF\ Mono\ Regular\ for\ Powerline:h14
    set guioptions=ga
    set transparency=0
  endif
else
  let g:CSApprox_loaded = 1

  if $COLORTERM == 'gnome-terminal'
    set term=gnome-256color
  else
    if $TERM == 'xterm'
      set term=xterm-256color
    endif
  endif
endif

if &term =~ '256color'
  set t_ut=
endif

"" Disable the blinking cursor.
set scrolloff=3

"" Status bar
set laststatus=2

"" Use modeline overrides
set modeline
set modelines=10

set title
set titleold="Terminal"
set titlestring=%F

set statusline=%F%m%r%h%w%=(%{&ff}/%Y)\ (line\ %l\/%L,\ col\ %c)\

if exists("*fugitive#statusline")
  set statusline+=%{fugitive#statusline()}
endif

" vim-airline
" let g:airline#extensions#virtualenv#enabled = 1
" let g:airline#extensions#tagbar#enabled = 1
"
" let g:airline_theme = 'gruvbox'
" let g:airline_powerline_fonts = 1
" let g:airline#extensions#syntastic#enabled = 1
" let g:airline#extensions#branch#enabled = 1
" let g:airline#extensions#tabline#enabled = 1
" let g:airline#extensions#tmuxline#enabled = 1
" let g:tmuxline_theme = 'airline'
"
" if !exists('g:airline_symbols')
"     let g:airline_symbols = {}
" endif
"
" let g:airline#extensions#virtualenv#enabled = 1
" let g:airline#extensions#tagbar#enabled = 1
"
" let g:airline_theme = 'gruvbox'
" let g:airline_powerline_fonts = 1
" let g:airline#extensions#syntastic#enabled = 1
" let g:airline#extensions#branch#enabled = 1
" let g:airline#extensions#tabline#enabled = 1
" let g:airline#extensions#tmuxline#enabled = 1
" let g:tmuxline_theme = 'airline'
" let g:airline_symbols.paste = 'ρ'
" let g:airline_symbols.whitespace = 'Ξ'
"
" if g:airline_powerline_fonts == 1
"     let g:airline_left_sep = ''
"     let g:airline_left_alt_sep = ''
"     let g:airline_right_sep = ''
"     let g:airline_right_alt_sep = ''
"     let g:airline_symbols.branch = ''
"     let g:airline_symbols.readonly = ''
"     let g:airline_symbols.linenr = '⭡'
" else
"     let g:airline_left_sep = ''
"     let g:airline_left_alt_sep = ''
"     let g:airline_right_sep = ''
"     let g:airline_right_alt_sep = ''
"     let g:airline_symbols.branch = '⎋'
"     let g:airline_symbols.readonly = '✖︎'
"     let g:airline_symbols.linenr = '␤'
" end

"*****************************************************************************
"" Abbreviations
"*****************************************************************************
"" no one is really happy until you have this shortcuts
cnoreabbrev W! w!
cnoreabbrev Q! q!
cnoreabbrev Qall! qall!
cnoreabbrev Wq wq
cnoreabbrev Wa wa
cnoreabbrev wQ wq
cnoreabbrev WQ wq
cnoreabbrev W w
cnoreabbrev Q q
cnoreabbrev Qall qall

"" NERDTree configuration
let g:NERDTreeChDirMode=2
let g:NERDTreeIgnore=['\.rbc$', '\~$', '\.pyc$', '\.db$', '\.sqlite$', '__pycache__']
let g:NERDTreeSortOrder=['^__\.py$', '\/$', '*', '\.swp$', '\.bak$', '\~$']
let g:NERDTreeShowBookmarks=1
let g:NERDTreeShowHidden=1
let g:nerdtree_tabs_focus_on_files=1
let g:NERDTreeMapOpenInTabSilent = '<RightMouse>'
let g:NERDTreeWinSize = 20
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*.pyc,*.db,*.sqlite
nnoremap <silent> <Leader>n :NERDTreeFind<CR>
nnoremap <silent> <C-n> :NERDTreeToggle<CR>

" grep.vim
nnoremap <silent> <leader>f :Rgrep<CR>
let Grep_Default_Options = '-iR'

" Quickfix
autocmd QuickFixCmdPost *grep* cwindow
nnoremap [q :cprevious
nnoremap ]q :cnext
nnoremap [Q :cfirst
nnoremap ]Q :clast
let QFix_Edit = 'tab'
set switchbuf+=usetab,newtab

" vimshell.vim
let g:vimshell_user_prompt = 'fnamemodify(getcwd(), ":~")'
let g:vimshell_prompt =  '$ '

"*****************************************************************************
"" Functions
"*****************************************************************************
if !exists('*s:setupWrapping')
  function s:setupWrapping()
    set wrap
    set wm=2
    set textwidth=79
  endfunction
endif

"*****************************************************************************
"" Autocmd Rules
"*****************************************************************************

"" The PC is fast enough, do syntax highlight syncing from start
augroup vimrc-sync-fromstart
  autocmd!
  autocmd BufEnter * :syntax sync fromstart
augroup END

"" Remember cursor position
augroup vimrc-remember-cursor-position
  autocmd!
  autocmd BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g`\"" | endif
augroup END

"" txt
augroup vimrc-wrapping
  autocmd!
  autocmd BufRead,BufNewFile *.txt call s:setupWrapping()
augroup END

"" make/cmake
augroup vimrc-make-cmake
  autocmd!
  autocmd FileType make setlocal expandtab
  autocmd BufNewFile,BufRead CMakeLists.txt setlocal filetype=cmake
augroup END

set autoread

"*****************************************************************************
"" Mappings
"*****************************************************************************"

" Open new split panes to right and bottom, which feels more natural
set splitbelow
set splitright

" Multiple cursor like Atom
let g:multi_cursor_next_key='<C-d>'

" Quicker window movement
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-h> <C-w>h
nnoremap <C-l> <C-w>l

"" Git
noremap <Leader>ga :Gwrite<CR>
noremap <Leader>gc :Gcommit<CR>
noremap <Leader>gsh :Gpush<CR>
noremap <Leader>gll :Gpull<CR>
noremap <Leader>gs :Gstatus<CR>
noremap <Leader>gb :Gblame<CR>
noremap <Leader>gd :Gdiff<CR>
noremap <Leader>gr :Gremove<CR>

"" Session
" nnoremap <leader>so :OpenSession
" nnoremap <leader>ss :SaveSession
" nnoremap <leader>sd :DeleteSession<CR>
" nnoremap <leader>sc :CloseSession<CR>
"
" let g:session_directory = "~/.vim/session"
" let g:session_command_aliases = 1

" Get .vimsessions/ under current directly
" "let s:local_session_directory = xolox#misc#path#merge(getcwd(), '.visess')
" If it exists
" if isdirectory(s:local_session_directory)
"   " Setting the saved session directory to the directory
"   let g:session_directory = s:local_session_directory
"   " When Vim is closed, Vim save it automatically
"   let g:session_autosave = 'yes'
"   " When Vim is started without an argument, It open default.vim of the saved session directory
"   let g:session_autoload = 'yes'
"   " Save it automatically once a time
"   let g:session_autosave_periodic = 1
" else
"   let g:session_autosave = 'no'
"   let g:session_autoload = 'no'
" endif
" unlet s:local_session_directory

" vim-workspace
nnoremap <leader>s :ToggleWorkspace<CR>
let g:workspace_session_name = './Session.vim'
let g:workspace_undodir='./.undodir'
let g:workspace_autosave_always = 1

"" Reload opening files
augroup vimrc-checktime
    autocmd!
    autocmd WinEnter * checktime
augroup END

"" Tabs
nnoremap <silent> <S-t> :tabnew<CR>
nnoremap <silent> <C-w>c :tablast <bar> tabnew<CR>
nnoremap <silent> <C-w><C-x> :tabclose<CR>
nnoremap <silent> tf :tabfirst<CR>
nnoremap <silent> tl :tablast<CR>
nnoremap <silent> <C-w><C-h> :tabnext<CR>
nnoremap <leader>q :tabprevious<CR>
nnoremap <leader>w :tabnext<CR>

"" Set working directory
nnoremap <leader>. :lcd %:p:h<CR>

"" Opens an edit command with the path of the currently edited file filled in
noremap <Leader>e :e <C-R>=expand("%:p:h") . "/" <CR>

"" Opens a tab edit command with the path of the currently edited file filled
noremap <Leader>te :tabe <C-R>=expand("%:p:h") . "/" <CR>

"*****************************************************************************
""" Plugin settings
"*****************************************************************************"

"" neocomplete.vim
"Note: This option must set it in .vimrc(_vimrc).  NOT IN .gvimrc(_gvimrc)!
" Disable AutoComplPop.
let g:acp_enableAtStartup = 0
" Use neocomplete.
let g:neocomplete#enable_at_startup = 1
" Use smartcase.
let g:neocomplete#enable_smart_case = 1
" Set minimum syntax keyword length.
let g:neocomplete#sources#syntax#min_keyword_length = 3
let g:neocomplete#lock_buffer_name_pattern = '\*ku\*'

" Define dictionary.
let g:neocomplete#sources#dictionary#dictionaries = {
    \ 'default' : '',
    \ 'vimshell' : $HOME.'/.vimshell_hist',
    \ 'scheme' : $HOME.'/.gosh_completions'
        \ }

" Define keyword.
if !exists('g:neocomplete#keyword_patterns')
    let g:neocomplete#keyword_patterns = {}
endif
let g:neocomplete#keyword_patterns['default'] = '\h\w*'

" Plugin key-mappings.
inoremap <expr><C-g> neocomplete#undo_completion()
inoremap <expr><C-l>  neocomplete#complete_common_string()

" Recommended key-mappings.
" <CR>: close popup and save indent.
inoremap <silent> <CR> <C-r>=<SID>my_cr_function()<CR>
function! s:my_cr_function()
  return neocomplete#close_popup() . "\<CR>"
  " For no inserting <CR> key.
  return pumvisible() ? neocomplete#close_popup() : "\<CR>"
endfunction
" <TAB>: completion.
inoremap <expr><Tab> pumvisible() ? "\<C-n>" : "\<TAB>"
" <BS>: close popup and delete backword char.
inoremap <expr><BS> neocomplete#smart_close_popup()."\<C-h>"
inoremap <expr><C-y> neocomplete#close_popup()
inoremap <expr><C-e> neocomplete#cancel_popup()
" Close popup by <Space>.
inoremap <expr><Space> pumvisible() ? neocomplete#close_popup() : "\<Space>"

" AutoComplPop like behavior.
let g:neocomplete#enable_auto_select = 1

" Enable omni completion.
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType ruby setlocal omnifunc=rubycomplete#Complete
autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags

" Enable heavy omni completion.
if !exists('g:neocomplete#sources#omni#input_patterns')
  let g:neocomplete#sources#omni#input_patterns = {}
endif
let g:neocomplete#sources#omni#input_patterns.php = '[^. \t]->\h\w*\|\h\w*::'
let g:neocomplete#sources#omni#input_patterns.c = '[^.[:digit:] *\t]\%(\.\|->\)'
let g:neocomplete#sources#omni#input_patterns.cpp = '[^.[:digit:] *\t]\%(\.\|->\)\|\h\w*::'

" For perlomni.vim setting.
" https://github.com/c9s/perlomni.vim
let g:neocomplete#sources#omni#input_patterns.perl = '\h\w*->\h\w*\|\h\w*::'

"" ctrlp.vim
set wildmode=list:longest,list:full
set wildignore+=*.o,*.obj,.git,*.rbc,*.pyc,__pycache__
let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn|tox)$'
let g:ctrlp_user_command = "find %s -type f | grep -Ev '"+ g:ctrlp_custom_ignore +"'"
let g:ctrlp_use_caching = 0
cnoremap <C-P> <C-R>=expand("%:p:h") . "/" <CR>
noremap <leader>b :CtrlPBuffer<CR>
let g:ctrlp_map = '<leader>p'
let g:ctrlp_open_new_file = 'r'

"" Unite.vim
" The prefix key.
nnoremap  [unite] <Nop>
nmap <Leader>u [unite]

" unite.vim keymap
nnoremap <F4> :<C-u>VimFiler<CR>
nnoremap <silent> [unite]u :<C-u>VimFiler<CR>
nnoremap <silent> [unite]c :<C-u>VimFilerBufferDir<CR>
nnoremap <silent> [unite]g :<C-u>Unite<Space>grep<CR>
nnoremap <silent> [unite]b :<C-u>Unite<Space>buffer<CR>
nnoremap <silent> [unite]m :<C-u>Unite<Space>bookmark<CR>
nnoremap <silent> [unite]a :<C-u>UniteBookmarkAdd<CR>
nnoremap <silent> [unite]f :<C-u>Unite<Space>file_mru<CR>
nnoremap <silent> [unite]h :<C-u>Unite<Space>history/yank<CR>
nnoremap <silent> [unite]r :<C-u>Unite -buffer-name=register register<CR>
nnoremap <silent> <Leader>vr :UniteResume<CR>

" vinarise
let g:vinarise_enable_auto_detect = 1

" unite-build map
nnoremap <silent> <Leader>vb :Unite build<CR>
nnoremap <silent> <Leader>vcb :Unite build:!<CR>
nnoremap <silent> <Leader>vch :UniteBuildClearHighlight<CR>

let g:unite_source_grep_command = 'ag'
let g:unite_source_grep_default_opts = '--nocolor --nogroup'
let g:unite_source_grep_max_candidates = 200
let g:unite_source_grep_recursive_opt = ''

" handy keymaps for unite-grep
vnoremap /g y:Unite grep::-iRn:<C-R>=escape(@", '\\.*$^[]')<CR><CR>

"" VimFiler
" let g:vimfiler_as_default_explorer = 1
" let g:vimfiler_safe_mode_by_default = 0
" Icons.
" let g:vimfiler_tree_leaf_icon = ' '
" let g:vimfiler_tree_opened_icon = '▾'
" let g:vimfiler_tree_closed_icon = '▸'
" let g:vimfiler_file_icon = '-'
" let g:vimfiler_marked_file_icon = '*'

" snippets
let g:UltiSnipsExpandTrigger="<TAB>"
let g:UltiSnipsJumpForwardTrigger="<TAB>"
let g:UltiSnipsJumpBackwardTrigger="<C-b>"
let g:UltiSnipsEditSplit="vertical"

" syntastic

"" Ruby
let g:syntastic_ruby_checkers = ['rubocop']

"" Python
let g:syntastic_python_checkers=['python', 'flake8']
let g:syntastic_python_flake8_post_args='--ignore=W391'

"" JavaScript
let g:syntastic_javascript_checkers = ['eslint']

"" SCSS
let g:syntastic_scss_checkers = ['scss/sass']

"" Symbol
let g:syntastic_error_symbol='✗'
let g:syntastic_warning_symbol='⚠'
let g:syntastic_style_error_symbol = '✗'
let g:syntastic_style_warning_symbol = '⚠'

"" Status line
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
hi SyntasticErrorSign ctermfg=160
hi SyntasticWarningSign ctermfg=220

"" Listing
let g:syntastic_enable_signs = 1
let g:syntastic_always_populate_loc_list = 0
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 1

" vim-gitgutter
let g:gitgutter_sign_added = '✚'
let g:gitgutter_sign_modified = '➜'
let g:gitgutter_sign_removed = '✘'

"" Copy/Paste/Cut
if has('unnamedplus')
  set clipboard+=unnamed,unnamedplus
endif

noremap YY "+y<CR>
noremap P "+gP<CR>
noremap XX "+x<CR>

nnoremap x "_x
nnoremap d "_d

if has('macunix')
  " pbcopy for OSX copy/paste
  vmap <C-x> :!pbcopy<CR>
  vmap <C-c> :w !pbcopy<CR><CR>
endif

"" Buffer nav
noremap <leader>z :bp<CR>
noremap <leader>x :bn<CR>

"" Close buffer
noremap <leader>c :bd

"" Clean search (highlight)
nnoremap <silent> <leader><space> :noh<cr>

"" Vmap for maintain Visual Mode after shifting > and <
vmap < <gv
vmap > >gv

"" Open current line on GitHub
noremap ,o :!echo `git url`/blob/`git rev-parse --abbrev-ref HEAD`/%\#L<C-R>=line('.')<CR> \| xargs open<CR><CR>

"" Custom configs

" vim-python
augroup vimrc-python
  autocmd!
  autocmd FileType python setlocal expandtab shiftwidth=2 tabstop=2 colorcolumn=79
        \ formatoptions+=croq softtabstop=2 smartindent
        \ cinwords=if,elif,else,for,while,try,except,finally,def,class,with
augroup END

" jedi-vim
let g:jedi#popup_on_dot = 0
let g:jedi#goto_assignments_command = "<leader>g"
let g:jedi#goto_definitions_command = "<leader>d"
let g:jedi#documentation_command = "K"
let g:jedi#usages_command = "<leader>n"
let g:jedi#rename_command = "<leader>r"
let g:jedi#show_call_signatures = "0"
let g:jedi#completions_command = "<C-Space>"

autocmd Filetype haskell setlocal omnifunc=necoghc#omnifunc

" vim-tags
au BufNewFile,BufRead *.php let g:vim_tags_project_tags_command = "ctags --languages=php -f .git/tags"

"" Tagbar
nnoremap <silent> <Leader>t :TagbarToggle<CR>
let g:tagbar_autofocus = 1

let g:tagbar_type_go = {
      \ 'ctagstype' : 'go',
      \ 'kinds'     : [  'p:package', 'i:imports:1', 'c:constants', 'v:variables',
      \ 't:types',  'n:interfaces', 'w:fields', 'e:embedded', 'm:methods',
      \ 'r:constructor', 'f:functions' ],
      \ 'sro' : '.',
      \ 'kind2scope' : { 't' : 'ctype', 'n' : 'ntype' },
      \ 'scope2kind' : { 'ctype' : 't', 'ntype' : 'n' },
      \ 'ctagsbin'  : 'gotags',
      \ 'ctagsargs' : '-sort -silent'
      \ }

let g:rubycomplete_buffer_loading = 1
let g:rubycomplete_classes_in_global = 1
let g:rubycomplete_rails = 1

let g:haskell_conceal_wide = 1
let g:haskell_multiline_strings = 1
let g:necoghc_enable_detailed_browse = 1

let g:tagbar_type_ruby = {
      \ 'kinds' : [
      \ 'm:modules',
      \ 'c:classes',
      \ 'd:describes',
      \ 'C:contexts',
      \ 'f:methods',
      \ 'F:singleton methods'
      \ ]
      \ }

" White Space
autocmd BufWritePre * :%s/\s\+$//ge

"" Tabs. May be overriten by autocmd rules
set expandtab
set tabstop=4
set softtabstop=0
set shiftwidth=4
set autoindent
set smartindent
set modifiable
set write

set wrap

augroup vimrc-ruby
  autocmd!
  autocmd BufNewFile,BufRead *.rb,*.rbw,*.gemspec setlocal filetype=ruby
  autocmd Filetype ruby setlocal tabstop=2 softtabstop=2 shiftwidth=2 et
augroup END

augroup vimrc-html
  autocmd!
  autocmd BufNewFile,BufRead *.html,*.tpl setlocal filetype=html
  autocmd Filetype html setlocal tabstop=2 softtabstop=2 shiftwidth=2 et
augroup END

" Display of double-byte space
function! ZenkakuSpace()
  highlight ZenkakuSpace cterm=underline ctermfg=lightblue guibg=darkgray
endfunction

if has('syntax')
  augroup ZenkakuSpace
    autocmd!
    autocmd ColorScheme * call ZenkakuSpace()
    autocmd VimEnter,WinEnter,BufRead * let w:m3=matchadd('ZenkakuSpace', '　')
  augroup END
  call ZenkakuSpace()
endif

" HTML
" let g:closetag_filenames = "*.html,*.xhtml,*.phtml,*.tpl,*.erb"
autocmd BufRead,BufNewFile *.slim set ft=slim
" emmet-vim
let g:user_emmet_leader_key = '<C-e>'
let g:user_emmet_settings = {
      \   'indentation': '  '
      \ }

autocmd FileType less,sass setl sw=2 sts=2 ts=2 et
au BufRead,BufNewFile *.scss setl ft=scss.css

"" JavaScript
au BufRead,BufNewFile,BufReadPre *.js,*.jsx setl ft=javascript
" let g:jsx_ext_required = 0
" let g:jscomplete_use = ['dom', 'moz']

"" PHP
autocmd FileType php setl sw=4 sts=0 ts=4 et
au BufRead,BufNewFile,BufReadPre *.php setl ft=php

" Closure
inoremap " ""<Left>
inoremap ' ''<Left>

" Brackets supplement
inoremap {<Enter> {}<Left><CR><ESC><S-o>
inoremap [<Enter> []<Left><CR><ESC><S-o>
inoremap (<Enter> ()<Left><CR><ESC><S-o>

" over.vim
nnoremap <silent> <Leader>m :OverCommandLine<CR>
nnoremap sub :OverCommandLine<CR>%s/<C-r><C-w>//g<Left><Left>
nnoremap subp y:OverCommandLine<CR>%s!<C-r>=substitute(@0, '!', '\\!', 'g')<CR>!!gI<Left><Left><Left>

" Wild menu
set wildmenu wildmode=list:full

" Nohighlight
nnoremap <ESC><ESC> :nohlsearch<CR>

" IndentLine
let g:indentLine_enabled = 1
let g:indentLine_color_term = 236
let g:indentLine_color_gui = '#3B3F3F'
let g:indentLine_faster = 1
let g:indentLine_char = '│'
nnoremap <silent> <leader>i :<C-u>IndentLinesToggle<CR>

" Paste
set clipboard+=unnamed

" For JSON
set conceallevel=0

" Mouse
set mouse=a

" Incremental seach
set incsearch

" Submode
call submode#enter_with('bufmove', 'n', '', '<Leader>>', '<C-w>>')
call submode#enter_with('bufmove', 'n', '', '<Leader><', '<C-w><')
call submode#enter_with('bufmove', 'n', '', '<Leader>+', '<C-w>+')
call submode#enter_with('bufmove', 'n', '', '<Leader>-', '<C-w>-')
call submode#map('bufmove', 'n', '', '>', '<C-w>>')
call submode#map('bufmove', 'n', '', '<', '<C-w><')
call submode#map('bufmove', 'n', '', '+', '<C-w>+')
call submode#map('bufmove', 'n', '', '-', '<C-w>-')

" Determining the current location
nnoremap <leader>d :echo expand("%")<CR>
