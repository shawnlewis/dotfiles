syntax on
set ruler
set autoindent
set expandtab
set shiftwidth=4
set tabstop=4

set background=dark
"let g:solarized_termcolors=256
colorscheme solarized

" Fuf
map <Leader>t :FufFile **/<CR>
map <Leader>r :FufBuffer **/<CR>
let g:fuf_file_exclude = '\v\~$|\.(o|exe|dll|bak|orig|swp|pyc)$|(^|[/\\])\.(hg|git|bzr)($|[/\\])|\/migrations\/|target\/'

" switch tabs with option-h, option-l
map ˙ :tabp<CR>
map ¬ :tabn<CR>

" switch windows with control-hjkl
noremap <C-h> <C-w>h
noremap <C-j> <C-w>j
noremap <C-k> <C-w>k
noremap <C-l> <C-w>l

" get rid of macvim toolbar
set guioptions-=T

" get rid of scrollbars
set guioptions-=L
set guioptions-=r

" include underscore in words
:set iskeyword+=_

" open file name on current line
map <Leader>o ^y$:!open <C-r>"<Enter>

" pyflakes. not in use, causes quick fix stuff to break
"   not sure if its pyflakes fault or if it happens when loading any python
"   plugin
filetype on
filetype plugin on

" slimv for clojure
let g:slimv_swank_clojure = '! xterm -e lein swank &'
"let g:slimv_swank_clojure = '! xterm -e cljs-repl listen'
let g:slimv_repl_split = 4
let g:lisp_rainbow=1

"pathogen
call pathogen#infect()

set ignorecase   "ignore case when searching
set smartcase   "only ignore case if pattern is all lowercase
set hls   "highlight search results

" highlight unwanted chars
:autocmd ColorScheme * highlight ExtraWhitespace ctermbg=red guibg=red
:highlight ExtraWhitespace ctermbg=red guibg=red
:match ExtraWhitespace /\s\+\%#\@<!$/

set clipboard=unnamed,unnamedplus
" Yank text to the OS X clipboard
"noremap <leader>y "*y
"noremap <leader>yy "*Y
"
" Preserve indentation while pasting text from the OS X clipboard
"noremap <leader>p :set paste<CR>:put  *<CR>:set nopaste<CR>

" arduino
au BufRead,BufNewFile *.pde set filetype=arduino
au BufRead,BufNewFile *.ino set filetype=arduino
