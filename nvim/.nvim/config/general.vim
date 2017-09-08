syntax on

set rnu
set showmatch
set backspace=indent,eol,start
set clipboard=unnamedplus

set nobackup
set noswapfile
set undodir=~/.config/nvim/undodir
set viminfo+=n~/.config/nvim/viminfo
set sessionoptions=options
let g:netrw_dirhistmax=0

set ruler

" Tab settings
set tabstop=4
set softtabstop=4
set expandtab
set shiftwidth=4
set smartindent

" Searching
set ignorecase
set smartcase

if has("autocmd")
  augroup vimrcEx
    au!

    " For all text files set 'textwidth' to 78 characters.
    autocmd FileType text setlocal textwidth=79

    " Trim whitespace onsave
    autocmd BufWritePre * %s/\s\+$//e

    " When editing a file, always jump to the last known cursor position.
    " Don't do it when the position is invalid or when inside an event handler
    " (happens when dropping a file on gvim).
    " Also don't do it when the mark is in the first line, that is the default
    " position when opening a file.
    autocmd BufReadPost *
          \ if line("'\"") > 1 && line("'\"") <= line("$") |
          \   exe "normal! g`\"" |
          \ endif

  augroup END
endif

" Unix as standard file type
set ffs=unix,dos,mac

" Always utf8
set termencoding=utf-8
set fileencoding=utf-8

set scrolloff=10 " scroll lines above/below cursor
set sidescrolloff=5
set lazyredraw

" Ruler
let &colorcolumn=join(range(81, 999), ",")
highlight ColorColumn ctermbg=LightBlue
autocmd ColorScheme * highlight ColorColumn ctermbg=Black

" Whitespace handling
set showbreak=↪\
set listchars=tab:\ \ ,extends:›,precedes:‹,nbsp:~,trail:\ "
set list
match ErrorMsg '\s\+$'

if has('path_extra')
  setglobal tags-=./tags tags^=./tags;
endif

if &history < 1000
  set history=1000
endif
if !empty(&viminfo)
    set viminfo^=!
endif

" buffer settings
set hid " buffer becomes hidden when abandoned

" split defaults
set splitbelow
set splitright

" stop highlighting of underscores in markdown files
autocmd BufNewFile,BufRead,BufEnter *.md,*.markdown :syntax match markdownIgnore "_"


" detect .md as markdown instead of modula-2
autocmd BufNewFile,BufReadPost *.md set filetype=markdown
