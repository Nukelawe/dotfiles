" With a map leader it's possible to do extra key combinations
" like <leader>w saves the current file
let mapleader = " "

" Remap VIM 0 to first non-blank character
map 0 ^

" deleting some mappings
map q <Nop>
map <Space> <Nop>
map <Tab> <Nop>

" u for undo, U for redo
noremap U :redo<cr>

" Go up and down by visual lines by default
noremap k gk
noremap <Up> gk
inoremap <Up> <C-o>gk
noremap j gj
inoremap <Down> <C-o>gj
noremap <Down> gj
noremap gk k
noremap gj j

" ctrl-arrows for WORDS, shift-arrows for words
noremap <C-h> B
noremap <C-l> E
noremap H b
noremap L e
noremap <C-Left> B
noremap <C-Right> E
noremap <S-Left> b
noremap <S-Right> e
noremap <C-k> <C-u>
noremap <C-j> <C-d>
noremap K <C-u>
noremap J <C-d>
noremap <C-Up> <C-u>
noremap <C-Down> <C-d>
noremap <S-Up> <C-u>
noremap <S-Down> <C-d>

" Disable highlight when <leader><cr> is pressed
map <silent> <leader><cr> :noh<cr>

" Use modifier (alt) to navigate windows
noremap <M-k> <C-w>k
noremap <M-h> <C-w>h
noremap <M-j> <C-w>j
noremap <M-l> <C-w>l
noremap <S-M-k> <C-w>K
noremap <S-M-h> <C-w>H
noremap <S-M-j> <C-w>J
noremap <S-M-l> <C-w>L
noremap <M-Up> <C-w>k
noremap <M-Left> <C-w>h
noremap <M-Down> <C-w>j
noremap <M-Right> <C-w>l
noremap <S-M-Up> <C-w>K
noremap <S-M-Left> <C-w>H
noremap <S-M-Down> <C-w>J
noremap <S-M-Right> <C-w>L
noremap <M-+> <C-w>_
noremap <M-q> <C-w>q
noremap <M-S-t> <C-w>T
noremap <M--> <C-w>-
noremap <M-_> <C-w>+
noremap ¾ <C-w>>
noremap ¼ <C-w><
noremap <M-r> <C-w>r

" Moving between tabs
noremap <C-n> :tabNext<Cr>
noremap <C-p> :tabprevious<Cr>

" Visual mode pressing # searches for the current selection
vnoremap <silent> # :<C-u>call VisualSelection('', '')<CR>/<C-R>=@/<CR><CR>

" Remove the Windows ^M - when the encodings gets messed up
noremap <Leader>m mmHmt:%s/<C-V><cr>//ge<cr>'tzt'm

" Toggle paste mode on and off
map <leader>pp :setlocal paste!<cr>
