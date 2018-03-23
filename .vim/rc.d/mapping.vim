"*****************************************************************************
"" Abbreviation
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
