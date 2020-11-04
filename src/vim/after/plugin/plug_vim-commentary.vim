if exists(':Commentary')
  " :: toggle comments
  nmap <leader>\ gcc
  vmap <leader>\ gc

  " :: add unsupported languages in the manner:
  "    https://github.com/tpope/vim-commentary#faq
  autocmd FileType apache setlocal commentstring=#\ %s
endif
