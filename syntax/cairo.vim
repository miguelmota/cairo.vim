" Vim syntax file
" Language: cairo
" Maintainer: Miguel Mota (https://github.com/miguelmota)
" Latest Revision: 04 January 2021

" Quit when a syntax file was already loaded.
if exists("b:current_syntax")
  finish
endif

syntax include @python syntax/python.vim

syn match clCommentLine /#[^\n]*\n/
syn keyword clKeywordControlElse else
syn keyword clKeywordOpcode call jmp ret abs rel if
syn keyword clKeywordRegister ap fp
syn keyword clKeywordMeta const let local tempvar felt as from import static_assert return assert member cast alloc_locals
syn keyword clKeywordSpecial SIZEOF_LOCALS SIZE
syn match clEntityFuncName /\v[a-zA-Z_][a-zA-Z0-9_]*:/ skipwhite

syn match clEntityCondition '\s\+.*\ze\s*:' contained
"syn keyword clKeywordControlIf if nextgroup=clEntityCondition
"syn keyword clKeywordControlEnd end

syn match clFuncName /\zs[a-zA-Z_][a-zA-Z0-9_]*\ze\s*(/ contained
syn keyword clKeywordFunc func nextgroup=clFuncName skipwhite

syn match clNumber '[+-]\?\d\+'

hi link clCommentLine Comment
hi link clKeywordControlElse Special
hi link clKeywordOpcode Keyword
hi link clKeywordRegister Identifier
hi link clKeywordMeta Keyword
hi link clKeywordSpecial Special
hi link clEntityFuncName Function
"hi link clKeywordControlIf Special
hi link clEntityCondition Statement
"hi link clKeywordControlEnd Special
hi link clKeywordFunc Function
hi link clFuncName Function
hi link clNumber Constant

let b:current_syntax = 'cairo'