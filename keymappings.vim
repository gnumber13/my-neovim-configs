" any mode
noremap <F3> :Lex<Return>
noremap <C-i> :resize +3<CR>
noremap <C-n> :resize -3<CR>
noremap <C-p> <C-w>3<>
noremap <C-u> <C-w>3>

" Normalmode 
" open terminal right
nnoremap tt :vs<Return><C-w>w:terminal<Return>i

nnoremap go :Goyo<CR>:set wrap<CR>
nnoremap yo :Goyo!<CR>:set nowrap<CR>

nnoremap <F8> :buffers<CR>:buffer<Space>


" Insertmode
inoremap jj <Esc>

" Terminalbuffer "insertmode"
" map esc-sequence of term-buffer to <esc>
tnoremap <Esc> <C-\><C-n>
tnoremap <C-w>w <Esc><C-w>w
tnoremap <C-w>j <Esc><C-w>j
tnoremap <C-w>k <Esc><C-w>k
tnoremap <C-w>h <Esc><C-w>h
tnoremap <C-w>l <Esc><C-w>l
"... and jj
tnoremap jj <C-\><C-n>

"set if filetype is python
au FileType python noremap <C-j>j :w !python3<Return>
"set if filetype is python
au FileType c noremap <C-j>j :! echo "success" <Return> 

"" Map leader to ,
let mapleader=','
"" Split
noremap <Leader>h :<C-u>split<CR>
noremap <Leader>v :<C-u>vsplit<CR>


"" Buffer nav
noremap <leader>z :bp<CR>
noremap <leader>q :bp<CR>
noremap <leader>x :bn<CR>
noremap <leader>w :bn<CR>

"" Close buffer
noremap <leader>c :bd<CR>

"" Switching windows
noremap <leader>j <C-w>j
noremap <leader>k <C-w>k
noremap <leader>l <C-w>l
noremap <leader>h <C-w>h

"" Vmap for maintain Visual Mode after shifting > and <
vmap < <gv
vmap > >gv
