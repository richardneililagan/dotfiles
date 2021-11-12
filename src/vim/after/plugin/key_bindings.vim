if (g:colemak_dhm_enabled == 1)
  finish
endif

" :: alternative insert mode toggles
inoremap kj <Esc>
inoremap jk <Esc>

" :: better movement in wrapped text
nnoremap j gj
nnoremap k gk
vnoremap j gj
vnoremap k gk

" :: <C-s> save
nnoremap <C-s> :w<cr>

" " :: easier buffer switching
nnoremap <C-u> :bp<CR>
nnoremap <C-o> :bn<CR>

" :: easier movement between panes
nnoremap <C-J> <C-W><Left>
nnoremap <C-K> <C-W><Right>
nnoremap <C-L> <C-W><Right>
nnoremap <C-H> <C-W><Left> 

" :: <C-q> closes the current buffer
if exists(':Bdelete')
  nnoremap <C-q> :Bdelete<cr>
else
  nnoremap <C-q> :bdelete<cr>
endif

" :: <space>bb closes all OTHER buffers
if exists(':Bonly')
  nnoremap <leader>bb :Bonly<cr>
endif

" :: kills all search highlights
nnoremap <leader>n :noh<cr>

" :: config files QoL keymaps ------------------------------------------------------ {{{
  nnoremap <leader>fed :e ~/.vimrc<cr>
  nnoremap <leader>fek :e ~/.vim/after/plugin/key_bindings.vim
  nnoremap <leader>feo :e ~/.vim/after/plugin/options.vim
  nnoremap <leader>fet :e ~/.vim/after/plugin/theme.vim
  nnoremap <leader>fec :e ~/.vim/after/plugin/coc.vim
" }}}
