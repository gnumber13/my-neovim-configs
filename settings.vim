syntax enable

" Required:
filetype plugin indent on
set fileencoding=utf-8
set fileencodings=utf-8
"" Fix backspace indent
set backspace=indent,eol,start

" terminal emulation
nnoremap <silent> <leader>sh :terminal<CR>

augroup vimrc-remember-cursor-position
  autocmd!
  autocmd BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g`\"" | endif
augroup END

set fileformats=unix,dos,mac

set path+=**
set wildmenu

let g:netrw_liststyle=3     " tree view
let g:netrw_winsize=20	    " set treeview width

set number
set relativenumber
set clipboard+=unnamedplus



set hidden "open buffer in background
set nowrap "display long lines as one line

set splitbelow
set t_Co=256 "256 colors support
set encoding=utf-8
set cursorline

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

"autosource configs when written to them
au BufWritePost $MYVIMRC source %
au BufWritePost $HOME/.config/nvim/settings.vim source %
au BufWritePost $HOME/.config/nvim/keymappings.vim source %
au BufWritePost $HOME/.config/nvim/plugins.vim source %




