" With a map leader it's possible to do extra key combinations
" like <leader>w saves the current file
let mapleader = " "

" Fast saving
nmap <leader>w :w!<cr>

" Remap VIM 0 to first non-blank character
map 0 ^

" deleting some mappings
map q <Nop>
map <Space> <Nop>
map <Tab> <Nop>

" u for undo, U for redo
noremap U :redo<cr>

" insert mode
noremap h i
noremap H I

" ijkl as arrows in normal and visual modes.
" Up and down move by visual lines
noremap i gk
noremap <Up> gk
inoremap <Up> <C-o>gk
noremap j h
noremap k gj
inoremap <Down> <C-o>gj
noremap <Down> gj
" right is unchanged (l)

" preceding arrow key with g moves up and down by a logical line
noremap gi k
noremap gk j

" ctrl-arrows for WORDS, shift-arrows for words
noremap <C-j> B
noremap <C-l> E
noremap J b
noremap L e
noremap <C-Left> B
noremap <C-Right> E
noremap <S-Left> b
noremap <S-Right> e
noremap <C-i> <C-u>
noremap <C-k> <C-d>
noremap I <C-u>
noremap K <C-d>
noremap <C-Up> <C-u>
noremap <C-Down> <C-d>
noremap <S-Up> <C-u>
noremap <S-Down> <C-d>

" Disable highlight when <leader><cr> is pressed
map <silent> <leader><cr> :noh<cr>


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Moving around, tabs, windows and buffers
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Smart way to move between windows
if g:os == "osx"
	noremap ı <C-w>k
	noremap √ <C-w>h
	noremap ª <C-w>j
	noremap ﬁ <C-w>l
	noremap ˆ <C-w>K
	noremap ¬ <C-w>H
	noremap º <C-w>J
	noremap ﬂ <C-w>L

	noremap ≤ <C-w><
	noremap ≥ <C-w>>
	noremap – <C-w>-
	noremap — <C-w>+
	noremap • <C-w>q
	noremap ± <C-w>_
	noremap ‡ <C-w>T
	noremap ® <C-w>r
elseif g:os == "linux"
	noremap <M-i> <C-w>k
	noremap <M-j> <C-w>h
	noremap <M-k> <C-w>j
	noremap <M-l> <C-w>l
	noremap <S-M-i> <C-w>K
	noremap <S-M-j> <C-w>H
	noremap <S-M-k> <C-w>J
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
endif

" Moving between tabs
noremap <C-n> :tabNext<Cr>
noremap <C-p> :tabprevious<Cr>

" Close the current buffer
map <leader>bd :Bclose<cr>:tabclose<cr>gT

" Close all the buffers
map <leader>ba :bufdo bd<cr>

map <leader>l :bnext<cr>
map <leader>j :bprevious<cr>

" Useful mappings for managing tabs
map <leader>tn :tabnew<cr>
map <leader>to :tabonly<cr>
map <leader>tc :tabclose<cr>
map <leader>tm :tabmove
map <leader>t<leader> :tabnext

" Let 'tl' toggle between this and the last accessed tab
let g:lasttab = 1
nmap <Leader>tl :exe "tabn ".g:lasttab<CR>
au TabLeave * let g:lasttab = tabpagenr()


" Opens a new tab with the current buffer's path
" Super useful when editing files in the same directory
map <leader>te :tabedit <c-r>=expand("%:p:h")<cr>/

" Switch CWD to the directory of the open buffer
map <leader>cd :cd %:p:h<cr>:pwd<cr>


""""""""""""""""""""""""""""""
" => Visual mode related
""""""""""""""""""""""""""""""
" Visual mode pressing # searches for the current selection
vnoremap <silent> # :<C-u>call VisualSelection('', '')<CR>/<C-R>=@/<CR><CR>


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Misc
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Remove the Windows ^M - when the encodings gets messed up
noremap <Leader>m mmHmt:%s/<C-V><cr>//ge<cr>'tzt'm

" Quickly open a buffer for scribble
map <leader>q :e ~/buffer<cr>

" Quickly open a markdown buffer for scribble
map <leader>x :e ~/buffer.md<cr>

" Toggle paste mode on and off
map <leader>pp :setlocal paste!<cr>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => NERDTree
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:NERDTreeMapOpenSplit=''
