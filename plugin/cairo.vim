function! CairoSave()
  if exists("g:cairo_linter_autosave") && g:cairo_linter_autosave > 0
    :call CairoFormat()
  endif
endfunction

function! CairoFormat()
  silent !clear
  silent execute "!cairo-format -i " . bufname('%') | execute ':redraw!'
endfunction

command! CairoFormat :call CairoFormat()
