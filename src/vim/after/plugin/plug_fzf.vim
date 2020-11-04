if exists(':GFiles')
  " :: <C-p> to open / search for files
  " :: this _should_ exclude files ignored by git, 
  "    while still including untracked files.
  nnoremap <C-p> :GFiles --cached --others --exclude-standard<cr>
endif
