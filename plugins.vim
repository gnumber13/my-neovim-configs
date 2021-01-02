" Add the dein installation directory into runtimepath
set runtimepath+=~/.cache/dein/repos/github.com/Shougo/dein.vim

if dein#load_state('~/.cache/dein')
  call dein#begin('~/.cache/dein')

  call dein#add('~/.cache/dein/repos/github.com/Shougo/dein.vim')
  call dein#add('Shougo/deoplete.nvim')

  if !has('nvim')
    call dein#add('roxma/nvim-yarp')
    call dein#add('roxma/vim-hug-neovim-rpc')
  endif
  let g:deoplete#enable_at_startup = 1
  "==========Add plugins here========
  "call dein#add('')
  call dein#add('ap/vim-css-color')

  call dein#add('arcticicestudio/nord-vim')

  call dein#add('Shougo/neosnippet.vim')
  call dein#add('Shougo/neosnippet-snippets')
  
  call dein#add('itchyny/lightline.vim')
  "call dein#add('jiangmiao/auto-pairs')
  call dein#add('tpope/vim-surround')
  call dein#add('xuhdev/vim-latex-live-preview')


  "==================================

  call dein#end()
  call dein#save_state()
endif
"======================config for lightline=========================
  colorscheme nord

  "let g:lightline = { 'colorscheme': 'nord',}

"===================================================================


"=====================config for neosnippet=========================

 let g:neosnippet#snippets_directory = '$HOME/.config/nvim/vim.snip' 

  " Plugin key-mappings.
  " Note: It must be "imap" and "smap".  It uses <Plug> mappings.
  imap <C-k>     <Plug>(neosnippet_expand_or_jump)
  smap <C-k>     <Plug>(neosnippet_expand_or_jump)
  xmap <C-k>     <Plug>(neosnippet_expand_target)
  
  " SuperTab like snippets behavior.
  " Note: It must be "imap" and "smap".  It uses <Plug> mappings.
  "imap <expr><TAB>
  " \ pumvisible() ? "\<C-n>" :
  " \ neosnippet#expandable_or_jumpable() ?
  " \    "\<Plug>(neosnippet_expand_or_jump)" : "\<TAB>"
  smap <expr><TAB> neosnippet#expandable_or_jumpable() ?
  \ "\<Plug>(neosnippet_expand_or_jump)" : "\<TAB>"
  
  " For conceal markers.
  if has('conceal')
    set conceallevel=2 concealcursor=niv
  endif

filetype plugin indent on

"====================================================================
 
"=====================config for deoplete============================
	
    " Set a single option
    call deoplete#custom#option('auto_complete_delay', 200)

    " Pass a dictionary to set multiple options
    call deoplete#custom#option({
    \ 'auto_complete_delay': 200,
    \ 'smart_case': v:true,
    \ })
"====================================================================



