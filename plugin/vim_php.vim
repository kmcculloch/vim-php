augroup vim_php
  autocmd BufWrite * call VimPhpBufWrite()
augroup END

" Set the proper phpcs coding standards before the file is written.
" @todo silent plus redraw seems to *mostly* handle this gracefully, although
" there is a slight flicker. silent shell commands in Vim are a bit confusing;
" research further?
function VimPhpBufWrite()
  if &filetype == "php"
    silent !phpcs --config-set default_standard Drupal
    redraw!
  elseif &filetype == "php.symfony"
    silent !phpcs --config-set default_standard Symfony2
    redraw!
  endif
endfunction
