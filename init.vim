lua << EOF
require('plugins')
require('lsp/setup')
require('lsp/nvim-cmp')
require('format')
EOF

" formatter
augroup FormatAutogroup
  autocmd!
  autocmd BufWritePost * FormatWrite
augroup END

" map leader key
let mapleader = ","

" Large file
let g:LargeFile=10

" File encoding dectection
set fileencodings=ucs-bom,utf-8,cp936,gb18030,big5,euc-jp,euc-kr,latin1
set encoding=utf-8

" Tab Settings
set modeline
set smarttab
set tabstop=2
set softtabstop=2
set shiftwidth=2
set expandtab

" Fix backspace indentation
set backspace=indent,eol,start

" Convince Vim it can use 256 colors
set t_Co=256

let no_buffers_menu=1

" Code Folding, everything foleded by default
set foldmethod=indent
set foldlevel=99
set foldenable

" Turn off annoying swapfiles
set noswapfile

" Enable hidden buffers
set hidden

" Enable automatic title setting for terminals
set title
set titleold="Terminal"
set titlestring=%F\ -\ Vim

" Activate a permanent ruler
set ruler

" Global by default
set gdefault

" Better Search
set hlsearch
set smartcase

" Hide matched on <Leader>space
nnoremap <leader><space> :nohlsearch<CR>

" Quit windows on <leader>q
nnoremap <leader>q :q<CR>

" substitute
nnoremap <leader>ss :%s,

" next split and prev split
nnoremap <leader>wl <c-w>l
nnoremap <leader>wh <c-w>h
nnoremap <leader>wj <c-w>j
nnoremap <leader>wk <c-w>k

" vsplit map
nnoremap <leader>vp :vsplit<CR>

" fencview
"let g:fencview_autodetect=1

" Make the command line two lines high and change the statusline display to
" something that looks useful.
set cmdheight=2
set laststatus=2
set showcmd
set showmode
set number
"set relativenumber

" Color Theme
syntax enable
set background=dark

" set paste
noremap <leader>sp :set paste<CR>
noremap <leader>cp :set nopaste<CR>

" nerdTree for git
let g:NERDTreeGitStatusIndicatorMapCustom = {
    \ "Modified"  : "✹",
    \ "Staged"    : "✚",
    \ "Untracked" : "✭",
    \ "Renamed"   : "➜",
    \ "Unmerged"  : "═",
    \ "Deleted"   : "✖",
    \ "Dirty"     : "✗",
    \ "Clean"     : "✔︎",
    \ "Unknown"   : "?"
    \ }

" open nerdTree
map <leader>t :NERDTreeToggle<CR>

" gitgutter
nmap ]h <Plug>(GitGutterNextHunk)
nmap [h <Plug>(GitGutterPrevHunk)
let g:gitgutter_max_signs=1000

" bookmark
let g:bookmark_save_per_working_dir = 1

" Append modeline after last line in buffer.
" Use substitute() instead of printf() to handle '%%s' modeline in LaTeX
" files.
function! AppendModeline()
  let l:modeline = printf(" vim: set ts=%d sw=%d tw=%d %set :",
        \ &tabstop, &shiftwidth, &textwidth, &expandtab ? '' : 'no')
  let l:modeline = substitute(&commentstring, "%s", l:modeline, "")
  call append(line("$"), l:modeline)
endfunction
nnoremap <silent> <leader>ml :call AppendModeline()<CR>
