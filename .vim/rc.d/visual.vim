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
let g:tmuxline_theme = 'airline'
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

