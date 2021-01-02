" any mode
noremap <F3> :Lex<Return>
noremap <C-i> :resize +3<CR>
noremap <C-n> :resize -3<CR>
noremap <C-p> <C-w>3<>
noremap <C-u> <C-w>3>

" Normalmode
nnoremap tt :vs<Return><C-w>w:terminal<Return>i
" Insertmode
inoremap jj <Esc>
" Terminalbuffer "insertmode"
tnoremap <Esc> <C-\><C-n>
tnoremap jj <C-\><C-n>


au FileType python noremap <C-j>j :w !python3<Return>


"" Map leader to ,
"" Map leader to ,
let mapleader=','
"" Split
noremap <Leader>h :<C-u>split<CR>
noremap <Leader>v :<C-u>vsplit<CR>

