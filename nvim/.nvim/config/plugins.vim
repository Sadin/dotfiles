filetype plugin indent on

"colo xoria256
colo tender

let g:deoplete#enable_at_startup = 1
let g:deoplete#enable_smart_case = 1
let g:deoplete#file#enable_buffer_path = 1
let g:deoplete#smart_close_popup = 1

" Start startify
autocmd vimenter * if !argc() | Startify | endif
