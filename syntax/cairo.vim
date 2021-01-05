" Vim syntax file
" Language: cairo
" Maintainer: Miguel Mota (https://github.com/miguelmota)
" Latest Revision: 04 January 2021

" Quit when a syntax file was already loaded.
if exists("b:current_syntax")
  finish
endif

syn match clCommentLine /#[^\n]*\n/
syn keyword clKeywordControlElse else
syn keyword clKeywordOpcode call jmp ret abs rel if
syn keyword clKeywordRegister ap fp
syn keyword clKeywordMeta const let local tempvar felt as from import static_assert return assert member cast alloc_locals
syn keyword clItalic SIZEOF_LOCALS SIZE
syn match clEntityFuncName /\v[a-zA-Z_][a-zA-Z0-9_]*:/ skipwhite

syn match clEntityCondition '\s\+.*\ze\s*:' contained
syn keyword clKeywordControlIf if nextgroup=clEntityCondition
syn keyword clKeywordControlEnd end

syn match clFuncName /\zs[a-zA-Z_][a-zA-Z0-9_]*\ze\s*(/ contained
syn keyword clKeywordFunc func nextgroup=clFuncName skipwhite

hi link clCommentLine Comment
hi clKeywordControlElse ctermfg=5
hi clKeywordOpcode ctermfg=6
hi link clKeywordMeta Keyword
hi link clKeywordItalic Keyword
hi clEntityFuncName ctermfg=3
hi clKeywordControlIf ctermfg=5
hi clEntityCondition ctermfg=3
hi clKeywordControlEnd ctermfg=5
hi clKeywordFunc ctermfg=5
hi clFuncName ctermfg=3

let b:current_syntax = 'cairo'