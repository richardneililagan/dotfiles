if (g:colemak_dhm_enabled == 0)
  finish
endif

echom " "
echom "Using Colemak-dhM."
echom "You can suppress this message in `colemak-dhm_key_bindings.vim`."

" :: ---

" Referenced from:
" https://www.reddit.com/r/Colemak/comments/j98ds1/an_example_of_vim_key_remapping/

" :: Adjust standard movement keys.
noremap m h|
noremap i l|
noremap n gj|
noremap e gk|
vnoremap n gj|
vnoremap e gk|

" :: Move standard vim keys to different targets.

" [1] (I)nsert mode is now on (T)ype.
noremap t i| 
noremap T I|

" [2] Move to the (e)nd of the word capitalized.
noremap E e|

" [3] Next and previous matches now on (h/k)
noremap h n|
noremap k N|

" [4] Replace mark.
noremap <C-m> m|

" Match easymotion movement
map <leader>m <Plug>(easymotion-linebackward)
map <leader>n <Plug>(easymotion-j)
map <leader>e <Plug>(easymotion-k)
map <leader>i <Plug>(easymotion-lineforward)

" Fixing sequences:
nnoremap ci ci|
nnoremap di di|
nnoremap vi vi|
nnoremap yi yi|
nnoremap ct ct|
nnoremap dt dt|
nnoremap vt vt|
nnoremap yt yt|

" :: Alternative insert mode toggles
inoremap gm <Esc>
inoremap mg <Esc>

" :: Easier movement between panes
nnoremap <C-N> <C-W><Left>
nnoremap <C-E> <C-W><Right>
nnoremap <C-I> <C-W><Right>
nnoremap <C-M> <C-W><Left> 

" :: config files QoL keymaps ------------------------------------------------------ {{{
  nnoremap <leader>fed :e ~/.vimrc<cr>
  nnoremap <leader>fek :e ~/.vim/after/plugin/key_bindings.vim
  nnoremap <leader>feo :e ~/.vim/after/plugin/options.vim
  nnoremap <leader>fet :e ~/.vim/after/plugin/theme.vim
  nnoremap <leader>fec :e ~/.vim/after/plugin/coc.vim
" }}}
