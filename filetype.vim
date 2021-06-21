" html
" expand html tag
au FileType html map <Leader>tg viwyea></<Esc>pa><Esc>3bi<<Esc>wwli
au FileType html iabbrev h1 <h1></h1>
au FileType html iabbrev ul <ul></ul>
au FileType html iabbrev nav <nav></nav>

"markdown
"
au FileType markdown vnoremap ,td norm I*
au FileType markdown nnoremap ,co o```<Esc>kO```<Esc>
" norm I- [ ]
au FileType markdown nnoremap ,x ^f[lrX<Esc>
au FileType markdown nnoremap ,r ^f[lr <Esc>


