function! CairoFormat()
  silent !clear
  silent execute "!cairo-format -i " . bufname('%') | execute ':redraw!'
endfunction

command! CairoFormat :call CairoFormat()
