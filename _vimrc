" .vimrc
"------------------------------------------------------------------------------
" Vim Scripts
" -----------
" bufexplorer
" nerdtree
" markdown
"------------------------------------------------------------------------------

" pathogen plugin management
execute pathogen#infect()

syntax on
filetype plugin indent on

set nocompatible
set cmdheight=2
" Minimal number of screen lines to keep above and below the cursor
set scrolloff=3
set shiftwidth=4
set tabstop=4
" Show the line and column number of the cursor position
set ruler
set title
" Don't wrap lines
set wrap
" characters to show before wrapped lines
set showbreak=<<>>
set expandtab
set noerrorbells
" set visual bells to have no beep or flash
set vb t_vb=
set showmode
" Characters to show in list mode
" set listchars=tab:»·,trail:·,eol:^,extends:>,precedes:<
set listchars=eol:^,extends:>,precedes:<
" set width of text line (max 80)
"set textwidth=80
set number
set undolevels=1000
" number of characters to be typed before swap file written to
set updatecount=100

set autowrite

autocmd FileType ant,xml,html,js,css,xsd,tex,yaml set tabstop=2
autocmd FileType ant,xml,html,js,css,xsd,tex,yaml set shiftwidth=2

" When editing a file, always jump to the last known cursor position.
" Don't do it when the position is invalid or when inside an event handler
" (happens when dropping a file on gvim).
autocmd BufReadPost *
    \ if line("'\"") > 0 && line("'\"") <= line("$") |
    \   exe "normal g`\"" |
    \ endif

set shellslash
set grepprg=grep\ -nH\ $*

"------------------------------------------------------------------------------
" Windows/Buffers
"------------------------------------------------------------------------------
set splitbelow
set splitright
set equalalways
set winheight=3
set winminheight=3

" set color of window title when moving to new window
autocmd WinEnter * hi StatusLine ctermbg=LightBlue ctermfg=White
autocmd WinEnter * hi StatusLineNC ctermbg=LightGray ctermfg=Black

" syntax highlighting
autocmd BufNewFile,BufReadPost *.md set filetype=markdown

"------------------------------------------------------------------------------
" Searching
"------------------------------------------------------------------------------

set incsearch
" highlight all matches of previous search pattern
set hlsearch
" Show matching brackets
set showmatch
set wrapscan

"------------------------------------------------------------------------------
" Misc
"------------------------------------------------------------------------------

" in diff mode, scroll comparing windows at same time
if &diff
    set scrollbind
endif

set statusline=%F%m%r%h%w\ [POS=%04l,%04v][%p%%]\ [LEN=%L]
set laststatus=2 " always show the status line

let NERDTreeShowHidden=1
let NERDTreeAutoCenter=1
nmap ,n :NERDTreeToggle<CR>

set colorcolumn=80,120

highlight folded ctermfg=DarkGrey ctermbg=none cterm=underline term=none
highlight colorcolumn ctermbg=DarkGrey
