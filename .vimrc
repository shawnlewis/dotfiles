syntax on
set ruler
set autoindent
set expandtab
set shiftwidth=5
set tabstop=4

set backspace=indent,eol,start

set background=light
"let g:solarized_termcolors=256
colorscheme solarized

"pathogen
call pathogen#infect()

" switch tabs with option-h, option-l
map ˙ :tabp<CR>
map ¬ :tabn<CR>

" shift-tab inserts literal tab
" inoremap <S-tab> <C-v><Tab>
"

" switch windows with control-hjkl
noremap <C-h> <C-w>h
noremap <C-j> <C-w>j
noremap <C-k> <C-w>k
noremap <C-l> <C-w>l
if has('nvim')
     tnoremap <Esc> <C-\><C-n>
     " motion commands for terminals
     tnoremap <C-h> <C-\><C-n><C-w>h
     tnoremap <C-j> <C-\><C-n><C-w>j
     tnoremap <C-k> <C-\><C-n><C-w>k
     tnoremap <C-l> <C-\><C-n><C-w>l

     " enter insert mode when entering terminal
     "autocmd BufWinEnter,WinEnter term://* startinsert

     " keys for splits
     map <C-_> :split <CR>
     map <C-\> :vsplit <CR>

     " resize pane key bindings
     nnoremap <M-j> <C-w>-
     nnoremap <M-k> <C-w>+
     nnoremap <M-h> <C-w><
     nnoremap <M-l> <C-w>>

endif

" get rid of macvim toolbar
set guioptions-=T

" get rid of scrollbars
set guioptions-=L
set guioptions-=r

" include underscore in words
:set iskeyword+=_

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

set ignorecase   "ignore case when searching
set smartcase   "only ignore case if pattern is all lowercase
set hls   "highlight search results

" highlight unwanted chars
:autocmd ColorScheme * highlight ExtraWhitespace ctermbg=red guibg=red
:highlight ExtraWhitespace ctermbg=red guibg=red
:match ExtraWhitespace /\s\+\%#\@<!$/

" ctrlp
set runtimepath^=~/.vim/bundle/ctrp.vim
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/](openwrt).*$',
 \ }

" Search up the directory hierarchy for ags file.
set tags=./tags;
let g:tagbar_left=1
let g:tagbar_width=30

set completeopt=menuone,preview

" show a navigable menu for tab completion
set wildmenu
set wildmode=longest,list,full

" highlight tabs, trailing
set list
set listchars=tab:>.,trail:.,extends:#,nbsp:.
autocmd filetype html,xml set listchars-=tab:>.

" arduino
au BufRead,BufNewFile *.pde set filetype=arduino
au BufRead,BufNewFile *.ino set filetype=arduino

" ctrlp
set runtimepath^=~/.vim/bundle/ctrp.vim
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/](openwrt).*$',
 \ }

set completeopt=menuone,preview

" show a navigable menu for tab completion
set wildmenu
set wildmode=longest,list,full

" highlight tabs, trailing
set list
set listchars=tab:>.,trail:.,extends:#,nbsp:.

autocmd filetype go,html,xml set listchars-=tab:>.
autocmd FileType go set nolist

" show filename and ruler always
set ls=2
autocmd filetype html,xml set listchars-=tab:>.

set clipboard=unnamedplus

""" leader commands

map <Leader>w :echom winwidth(0) winheight(0)<CR>
map <Leader>u
    \ :TagbarToggle<CR>
    \ <C-l>
    \ :split <CR> :resize 50 <CR>
    \ :vsplit<CR> :vsplit<CR>
    \ <C-j> :vsplit<CR> :vsplit<CR>

" Preserve indentation while pasting text from the OS X clipboard
noremap <leader>p :set paste<CR>:put  *<CR>:set nopaste<CR>

" jump to NERD-Tree window, which is assumed to be window #1
map <Leader>f :e .<CR>
map <Leader>ot :TagbarToggle<CR>
map <Leader>t 1<C-w><C-w>
map <Leader>n :edit ~/notes/
map <Leader>nw :edit ~/notes/work/

