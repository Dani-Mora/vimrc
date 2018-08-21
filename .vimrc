set paste " Proper format when copying from outside
set number " Set line number

set tabstop=4 " Spaces per visual TAB
set softtabstop=4 " Inserted spaces when TAB
set expandtab " Convert tabs into spaces

set cursorline " Highlight current line
filetype indent on " Load filetype-specific indent files
syntax on " Syntax processing

set wildmenu " Visualt autocomplete for command menu
set showmatch " When your cursor moves over a parenthesis-like character, the matching one will be highlighted as well.

" Command-related
set incsearch " Search as characters are entered
set hlsearch " Highlight searches
set showcmd " Show command in bottom bar

set statusline+=%F\ %l\:%c " All fill line to the status line
set laststatus=2

" Scope to search within project files
if has('cscope')
  set cscopetag cscopeverbose

  if has('quickfix')
    set cscopequickfix=s-,c-,d-,i-,t-,e-
  endif

  cnoreabbrev csa cs add
  cnoreabbrev csf cs find
  cnoreabbrev csk cs kill
  cnoreabbrev csr cs reset
  cnoreabbrev css cs show
  cnoreabbrev csh cs help

  command -nargs=0 Cscope cs add $VIMSRC/src/cscope.out $VIMSRC/src
endif

colorscheme elflord

" Set 80-column-length limit
highlight OverLength ctermbg=red ctermfg=white guibg=#592929
match OverLength /\%81v.\+/
