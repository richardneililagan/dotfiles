if exists(':NERDTree')
  " :: close vim if nerdtree is the only window open
  autocmd bufenter * if (winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree()) | q | endif

  " :: sidebar explorer
  if exists(':NERDTreeToggle')
    noremap <C-k><C-b> :NERDTreeToggle<cr>
  endif

  " :: change the default NERDtree node markers
  let g:NERDTreeDirArrowExpandable = '+'
  let g:NERDTreeDirArrowCollapsible = '-'

  " :: show hidden files
  let g:NERDTreeShowHidden = 1
endif
