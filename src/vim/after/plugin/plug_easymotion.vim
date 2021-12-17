if exists('g:EasyMotion_loaded')
  " :: make easymotion global search behave like vim smartcase
  let g:EasyMotion_smartcase = 1

  " :: use easymotion for default search
  noremap / <Plug>(easymotion-sn)
  onoremap / <Plug>(easymotion-tn)

  " :: use easymotion for bidirectional search
  noremap s <Plug>(easymotion-s)

  " :: use easymotion's (saner?) prev/next search result behavior
  " noremap n <Plug>(easymotion-next)
  " noremap N <Plug>(easymotio-prev)
endif
