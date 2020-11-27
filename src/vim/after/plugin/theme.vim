autocmd vimenter * ++nested colorscheme gruvbox
set background=dark

if has('gui_running')
  set antialias transparency=0
  set guioptions+=gme

  color ir_black+
else
  set termguicolors
  " colorscheme gruvbox
endif
