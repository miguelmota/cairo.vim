" augroup prevents duplicated autocmds when sourcing
augroup cairo
  autocmd!
  autocmd BufNewFile,BufRead *.cairo setfiletype cairo
  autocmd BufWritePost * :call CairoSave()
augroup END