" Vim color file
" Author:       Sergey Vlasov <sergey@vlasov.me>
" Last Change:  2014-11-25
" Version:      0.4
" Git:          http://github.com/sergey-vlasov/codeblocks-dark.vim

" Inspired by the original Code::Blocks theme in a dark manner.

set background=dark
highlight clear
let g:colors_name="codeblocks-dark"

let save_cpo=&cpo
set cpo&vim

" basic highlight groups (:help highlight-groups) {{{

" text {{{
hi Normal       guifg=#D1D1D1       guibg=#1B1D21       gui=NONE
hi ColorColumn                      guibg=#1B1D21

hi Directory    guifg=#729FCF       guibg=NONE          gui=bold

hi NonText      guifg=#C2BFA5       guibg=#1B1D21       gui=NONE    ctermfg=White cterm=NONE
hi SpecialKey   guifg=#1F2125       guibg=NONE          gui=NONE    ctermfg=DarkMagenta cterm=NONE
hi Conceal      guifg=#1F2125       guibg=NONE          gui=NONE    ctermfg=DarkMagenta cterm=NONE

hi SpellBad     guifg=NONE          guibg=NONE          gui=undercurl
hi SpellCap     guifg=NONE          guibg=NONE          gui=undercurl
hi SpellLocal   guifg=NONE          guibg=NONE          gui=undercurl
hi SpellRare    guifg=NONE          guibg=NONE          gui=undercurl

hi DiffText     guifg=#FFFFFF       guibg=#0AFF5E       gui=bold
hi DiffAdd      guifg=#ADFF2F       guibg=#247548       gui=NONE
hi DiffDelete   guifg=#FFC2BC       guibg=#8B353E       gui=NONE
hi DiffChange   guifg=#FFDD8F       guibg=#995F2A       gui=NONE
" }}}

" borders / separators / menus {{{
hi Folded       guifg=#C2BFA5       guibg=#1B1D21       gui=underline
hi FoldColumn   guifg=#C8BCB9       guibg=#1B1D21       gui=bold
hi SignColumn   guifg=#C8BCB9       guibg=#242629       gui=bold

hi Pmenu        guifg=#1B1D21       guibg=#A6A190       gui=NONE
hi PmenuSel     guifg=#FFFFFF       guibg=#133293       gui=NONE
hi PmenuSbar    guifg=NONE          guibg=#555555       gui=NONE
hi PmenuThumb   guifg=NONE          guibg=#CCCCCC       gui=NONE

hi StatusLine   guifg=#1B1D21       guibg=#C2BFA5       gui=bold    ctermfg=Black ctermbg=Blue cterm=NONE
hi StatusLineNC guifg=#2D2D2D       guibg=#C2BFA5       gui=NONE    ctermfg=Black ctermbg=White cterm=NONE
hi WildMenu     guifg=#FFFFFF       guibg=#133293       gui=bold
hi VertSplit    guifg=#C2BFA5       guibg=#C2BFA5       gui=NONE    ctermfg=White ctermbg=White cterm=NONE

hi TabLine      guifg=#444444       guibg=#C2BFA5       gui=NONE
hi TabLineFill  guifg=#444444       guibg=#C2BFA5       gui=NONE
hi TabLineSel   guifg=#1B1D21       guibg=#65BDFF       gui=bold

"hi Menu
"hi Scrollbar
"hi Tooltip
" }}}

" cursor / dynamic / other {{{
hi Cursor       guifg=#1B1D21       guibg=#FFFF60       gui=NONE
hi CursorIM     guifg=#1B1D21       guibg=#AACCFF       gui=NONE
hi LineNr       guifg=#C2BFA5       guibg=#1B1D21       gui=NONE    ctermfg=Magenta cterm=NONE
hi CursorLine   guifg=NONE          guibg=NONE          gui=NONE    cterm=NONE
hi CursorLineNR guifg=#FFFF60       guibg=NONE          gui=bold    ctermfg=Yellow cterm=NONE
hi CursorColumn guifg=NONE          guibg=#383838       gui=NONE

hi Visual       guifg=NONE          guibg=#344863       gui=NONE
hi VisualNOS    guifg=NONE          guibg=#36393D       gui=NONE
hi IncSearch    guifg=#1B1D21       guibg=#EEDD33       gui=bold
hi Search       guifg=#FFFFFF       guibg=#A80F2B       gui=NONE    ctermbg=Red
hi MatchParen   guifg=#FFC124       guibg=#47360A       gui=bold
" }}}

" listings / messages {{{
hi ModeMsg      guifg=#EECC18       guibg=NONE          gui=NONE
hi Title        guifg=#DD4452       guibg=NONE          gui=bold
hi Question     guifg=#66D077       guibg=NONE          gui=NONE
hi MoreMsg      guifg=#39D049       guibg=NONE          gui=NONE
hi ErrorMsg     guifg=#FFFFFF       guibg=#FF0000       gui=bold
hi WarningMsg   guifg=#CCAE22       guibg=NONE          gui=bold
" }}}

" }}}

" syntax highlighting groups {{{
"*Comment*      any comment
hi Comment      guifg=#5F8787       guibg=NONE          gui=NONE    ctermfg=DarkMagenta cterm=NONE

"*Constant*     any constant
" String        a string constant
" Character     a character constant: 'c', '\n'
" Number        a number constant: 234, 0xff
" Boolean       a boolean constant: TRUE, false
" Float         a floating point constant: 2.3e10
hi Constant     guifg=#F34AFF       guibg=NONE          gui=NONE    ctermfg=Magenta cterm=NONE
hi String       guifg=#87A1FF       guibg=NONE          gui=italic  ctermfg=Blue cterm=NONE
hi Character    guifg=#FFA500       guibg=NONE          gui=bold    ctermfg=Yellow cterm=NONE
hi Boolean      guifg=#F34AFF       guibg=NONE          gui=bold    ctermfg=Magenta cterm=NONE

"*PreProc*      generic
" Include       preprocessor #include
" Define        preprocessor #define
" Macro         same as Define
" PreCondit     preprocessor #if, #else, #endif, etc.
hi PreProc      guifg=#A2CD27       guibg=NONE          gui=NONE     ctermfg=Green cterm=NONE

"*Type*         int, long, char, etc.
" StorageClass  static, register, volatile, etc.
" Structure     struct, union, enum, etc.
" Typedef       A typedef
hi Type         guifg=#69C2FF       guibg=NONE          gui=bold     ctermfg=Blue cterm=NONE

"*Identifier*   any variable name
" Function      function name (also: methods for classes)
hi Identifier   guifg=#4BF7FF       guibg=NONE          gui=NONE     ctermfg=Cyan cterm=NONE

" Statement     any statement
" Conditional   if, then, else, endif, switch, etc.
" Repeat        for, do, while, etc.
" Label         case, default, etc.
" Operator      sizeof, +, *, etc.
" Keyword       any other keyword
" Exception     try, catch, throw
hi Statement    guifg=#69C2FF       guibg=NONE          gui=bold     ctermfg=Blue cterm=NONE
hi Operator     guifg=#EF3E3E       guibg=NONE          gui=NONE     ctermfg=Red cterm=NONE
hi Braces       guifg=yellow1       guibg=NONE          gui=NONE     ctermfg=Yellow cterm=NONE

"*Special*      any special symbol
" SpecialChar   special character in a constant
" Tag           you can use CTRL-] on this
" Delimiter     character that needs attention
" SpecialComment special things inside a comment
" Debug         debugging statements
hi Special      guifg=#83E683       guibg=NONE          gui=bold    ctermfg=Green cterm=NONE
hi SpecialChar  guifg=orange        guibg=NONE          gui=bold    ctermfg=Yellow cterm=NONE
hi Delimiter    guifg=orange        guibg=NONE          gui=bold    ctermfg=Yellow cterm=NONE

hi Underlined   guifg=#80A0FF       guibg=NONE          gui=underline
hi Ignore       guifg=#888888       guibg=NONE          gui=NONE
hi Error        guifg=#FFFFFF       guibg=#FF0000       gui=NONE
hi Todo         guifg=#FFFFFF       guibg=#EE7700       gui=bold
" }}}

let &cpo=save_cpo

