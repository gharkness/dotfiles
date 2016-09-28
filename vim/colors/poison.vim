" Original by Arthur Jaron refinded by Matthias H.

" Settings
if !exists('g:poison_recolor_quickfixsigns')
  let g:poison_recolor_quickfixsigns = 1
endif

" the default scheme is 'light'
if &background == "dark"
  hi clear
  let g:colors_name = "poison"

  " Language Specific ##########################################################
  
  " C
  hi link cType Type

  " Embedded inside HTML <script>
  hi javaScript       guifg=#a5c5b5 guibg=NONE gui=none

  " htmldjango
  hi DjangoBlock      guifg=#20ba50            gui=none
  hi link djangoTagBlock DjangoBlock
  hi link djangoVarBlock DjangoBlock
  hi link djangoFilter   SpecialChar

  hi markdownUrl guifg=#0087ff gui=underline ctermfg=33 cterm=underline
  

  " Plugins ####################################################################
  
  " https://github.com/majutsushi/tagbar
  hi link TagbarSignature Comment
  hi TagbarScope      guifg=#0087d7 gui=bold ctermfg=32 cterm=bold
  hi TagbarType       guifg=#66b600 gui=bold ctermfg=70 cterm=bold
  hi TagbarKind       guifg=#7ad6ff ctermfg=117

  " https://github.com/mhinz/vim-startify
  hi StartifyBracket  guifg=#0087d7 guibg=#303030 gui=bold ctermfg=32 ctermbg=236 cterm=bold
  hi StartifyFile     guifg=#00afff ctermfg=39
  hi StartifyHeader   guifg=#00afff ctermfg=39

  hi link StartifyFooter StartifyHeader

  hi StartifyNumber   ctermfg=215 guifg=#00d700 guibg=#303030 gui=bold ctermfg=40 ctermbg=236 cterm=bold
  hi StartifyPath     guifg=#949494 ctermfg=246
  hi StartifySlash    guifg=#dadada ctermfg=253
  hi StartifySpecial  guifg=#b2b2b2 guibg=#606060 ctermfg=249 ctermbg=241


  " 256 Color Terminal (dark) ##################################################
  if &t_Co > 255
    hi Normal         ctermbg=238  ctermfg=252
    hi CursorLine     ctermbg=239              term=none cterm=none
    hi CursorColumn   ctermbg=239
    hi NonText        ctermbg=237  ctermfg=102
    hi Conceal        ctermbg=237  ctermfg=230
    hi Comment                     ctermfg=245
    hi CommentURL                  ctermfg=68  cterm=underline 
    hi CommentEmail                ctermfg=68  cterm=underline 
    hi Constant                    ctermfg=214 cterm=bold
    hi String                      ctermfg=220
    hi Character                   ctermfg=171
    hi Number 	                   ctermfg=214
    hi Boolean                     ctermfg=149
    hi Float                       ctermfg=227
    hi Identifier                  ctermfg=37  cterm=none
    hi Function                    ctermfg=117
    hi Statement                   ctermfg=149 cterm=bold 
    hi Conditional                 ctermfg=110 cterm=bold 
    hi Repeat                      ctermfg=110 cterm=bold
    hi Label                       ctermfg=35  cterm=bold
    hi Operator                    ctermfg=67
    hi Keyword                     ctermfg=158
    hi Exception                   ctermfg=32  cterm=bold
    hi PreProc                     ctermfg=33  cterm=bold
    hi Include                     ctermfg=33  cterm=bold
    hi Define                      ctermfg=33  cterm=bold
    hi Macro                       ctermfg=140
    hi PreCondit                   ctermfg=110
    hi Type                        ctermfg=67
    hi StorageClass                ctermfg=71  cterm=none
    hi Structure                   ctermfg=67
    hi Typedef                     ctermfg=72
    hi Special                     ctermfg=194 cterm=bold
    hi SpecialChar                 ctermfg=69  cterm=bold
    hi Tag                         ctermfg=39  cterm=bold
    hi Delimiter                   ctermfg=104 cterm=bold
    hi SpecialComment              ctermfg=67  cterm=bold
    hi Debug                       ctermfg=184 cterm=bold
    hi Underlined                  ctermfg=249 cterm=underline
    hi Todo           ctermbg=94   ctermfg=227 cterm=bold
    hi Directory                   ctermfg=252 cterm=bold
    hi DiffAdd        ctermbg=22
    hi DiffChange     ctermbg=239
    hi DiffText       ctermbg=18   ctermfg=254 cterm=bold
    hi DiffDelete     ctermbg=237  ctermfg=238 cterm=none
    hi SpellBad       ctermbg=none ctermfg=203 cterm=undercurl
    hi SpellCap       ctermbg=none ctermfg=33  cterm=undercurl
    hi SpellLocal     ctermbg=none ctermfg=51  cterm=undercurl
    hi SpellRare      ctermbg=none ctermfg=205 cterm=undercurl
    hi Search         ctermbg=148  ctermfg=236 cterm=bold       " Changed
    hi IncSearch      ctermbg=220  ctermfg=16  cterm=none       " Changed
    hi Error          ctermbg=160  ctermfg=224 cterm=underline  " Changed
    hi ErrorMsg       ctermbg=88   ctermfg=224 cterm=bold
    hi WarningMsg                  ctermfg=221
    hi WildMenu       ctermbg=148  ctermfg=16
    hi Question       ctermbg=148  ctermfg=16
    hi MoreMsg        ctermbg=148  ctermfg=16
    hi ModeMsg        ctermbg=148  ctermfg=16  cterm=bold
    hi Cursor         ctermbg=160  ctermfg=231
    hi CursorLineNr   ctermbg=148  ctermfg=238 cterm=bold       " Changed
    hi MatchParen     ctermbg=112  ctermfg=234
    hi Visual         ctermbg=27   ctermfg=254                  " Changed
    hi VisualNOS      ctermbg=239
    hi Pmenu          ctermbg=236  ctermfg=249
    hi PmenuSel       ctermbg=148  ctermfg=235
    hi PmenuSbar      ctermbg=247
    hi PmenuThumb     ctermbg=240
    hi SignColumn     ctermbg=236  ctermfg=148
    hi FoldColumn     ctermbg=236  ctermfg=145 cterm=bold
    hi Folded         ctermbg=236  ctermfg=243
    hi LineNr         ctermbg=236  ctermfg=244
    hi StatusLine     ctermbg=235  ctermfg=230 cterm=NONE term=NONE
    hi StatusLineNC   ctermbg=236  ctermfg=244 cterm=NONE term=NONE
    hi VertSplit      ctermbg=148  ctermfg=236
    hi Title                       ctermfg=252 cterm=bold
    hi TabLine        ctermbg=22   ctermfg=148 cterm=none
    hi TabLineSel     ctermbg=148  ctermfg=22  cterm=none
    hi TabLineFill    ctermbg=247  ctermfg=236 cterm=none
    hi javaScript                  ctermfg=151
    hi DjangoBlock                 ctermfg=35  cterm=none
    set background=dark
  endif
endif 
