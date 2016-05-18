syntax enable
set t_Co=256
set background=dark
colorscheme darkmate

:command Outdoor :set background=light | :colorscheme hemisu

hi Normal ctermbg=NONE

let &t_AB="\e[48;5;%dm"
let &t_AF="\e[38;5;%dm"

set guifont=FuraMonoForPowerline\ Nerd\ Font\ Medium\ 12

set encoding=utf-8
scriptencoding utf-8

autocmd! FileType c,cpp,java call CSyntaxAfter()

set autochdir

set smartindent
set smarttab

set nocompatible
set hidden

set noswapfile

set number

set ruler

"syntax on

set hlsearch

set autoread

set timeoutlen=1000 ttimeoutlen=0

let mapleader=","

if exists("&relativenumber")
	set relativenumber
	au BufReadPost * set relativenumber
endif

function! StripWhitespace()
	let save_cursos = getpos(".")
	let old_query = getreg('/')
	:%s/\s\+$//e
	call setpos('.', save_cursos)
	call setreg('/', old_query)
endfunction

nnoremap <leader>w <Esc>:w<CR>
nnoremap <leader>q <Esc>:q<CR>
nnoremap <leader>wq <Esc>:wq<CR>

imap <leader><leader> <Esc>

imap <C-K> <C-O>%<C-O>%<right>

nnoremap <leader>ss :call StripWhitespace()<CR>

nnoremap <leader>\| :vsplit .<CR>
nnoremap <leader>- :split .<CR>

nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

highlight clear SignColumn
highlight LineNr guibg=NONE

set mouse=a

" Change cursor shape between insert and normal mode in iTerm2.app
if $TERM_PROGRAM =~ "iTerm"
    let &t_SI = "\<Esc>]50;CursorShape=1\x7"  " Vertical bar in insert mode
    let &t_EI = "\<Esc>]50;CursorShape=0\x7"  " Block in normal mode
endif

" tmux will only forward escape sequences to the terminal if surrounded by a DCS sequence
" http://sourceforge.net/mailarchive/forum.php?thread_name=AANLkTinkbdoZ8eNR1X2UobLTeww1jFrvfJxTMfKSq-L%2B%40mail.gmail.com&forum_name=tmux-users
if exists('$TMUX')
    let &t_SI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=1\x7\<Esc>\\"
    let &t_EI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=0\x7\<Esc>\\"
else
    let &t_SI = "\<Esc>]50;CursorShape=1\x7"
    let &t_EI = "\<Esc>]50;CursorShape=0\x7"
endif

set shiftwidth=4
set tabstop=4
set expandtab

set noerrorbells

set nostartofline

set scrolloff=4

set noshowmode

set title

set shortmess=atI

set laststatus=2

set wildmenu

set backspace=indent,eol,start

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'

" Colors
Plugin 'jdkanani/vim-material-theme'
Plugin 'Wutzara/vim-materialtheme'
Plugin 'freeo/vim-kalisi'
Plugin 'NLKNguyen/papercolor-theme'
Plugin 'flazz/vim-colorschemes'
Plugin 'chriskempson/base16-vim'
Plugin 'yearofmoo/Vim-Darkmate'

" Git
Plugin 'tpope/vim-git'
Plugin 'tpope/vim-fugitive'
Plugin 'airblade/vim-gitgutter'
"Plugin 'sjl/gundo.vim'

" Add IDE-like Functionality
Plugin 'majutsushi/tagbar'
Plugin 'scrooloose/syntastic'
Plugin 'Valloric/YouCompleteMe'
Plugin 'itchyny/lightline.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'ryanoasis/vim-devicons'
Plugin 'rizzatti/dash.vim'
"Plugin 'ryanoasis/vim-startify'
"Plugin 'ervandew/supertab'

" Editor Plugins
Plugin 'tpope/vim-endwise'
Plugin 'Raimondi/delimitMate'
Plugin 'wincent/command-t'
Plugin 'tpope/vim-unimpaired'
Plugin 'easymotion/vim-easymotion'
"Plugin 'Yggdroot/indentLine'

" Snippets
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'

" Tags
"Plugin 'xolox/vim-easytags'
"Plugin 'vim-scripts/TagHighlight'

" Tmux
Plugin 'christoomey/vim-tmux-navigator'
Plugin 'benmills/vimux'

" Syntax and Highlighting
Plugin 'vim-scripts/cSyntaxAfter'
Plugin 'dragfire/Improved-Syntax-Highlighting-Vim'

" Java
Plugin 'rudes/vim-java'
Plugin 'artur-shaik/vim-javacomplete2'

" Javascript
"Plugin 'othree/yajs.vim'
Plugin 'othree/javascript-libraries-syntax.vim'
"Plugin 'maksimr/vim-jsbeautify'
Plugin 'pangloss/vim-javascript'
Plugin '1995eaton/vim-better-javascript-completion'
Plugin 'jelera/vim-javascript-syntax'
"Plugin 'ternjs/tern_for_vim'

" Less
Plugin 'groenewege/vim-less'

" JSON
Plugin 'elzr/vim-json'

" Typescript
Plugin 'leafgarland/typescript-vim'

" Coffeescript
Plugin 'kchmck/vim-coffee-script'

" Markdown 
"Plugin 'suan/vim-instant-markdown'
"Plugin 'gabrielelana/vim-markdown'

"Latex
"Plugin 'LaTeX-Box-Team/LaTeX-Box'

" Langauges
Plugin 'derekwyatt/vim-scala'
"Plugin 'faith/vim-go'

" Web API
Plugin 'mattn/webapi-vim'

" Distraction Free
"Plugin 'junegunn/goyo.vim'

" Misc
"Plugin 'xolox/vim-misc'

call vundle#end()

let g:EclimCompletionMethod = 'omnifunc'

let g:UltiSnipsExpandTrigger="<c-j>"
let g:UtilSnipsForwardTrigger="<c-j>"
let g:UtilSnipsJumpBackwardTrigger="<c-h>"

let g:airline_powerline_fonts = 1

nmap <silent> <leader>d <Plug>DashSearch

let g:Powerline_symbols = 'fancy'

let delimitMate_expand_cr = 1

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 2
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_java_checkers = ['checkstyle', 'javac']
let g:syntastic_java_javac_delete_output = 1
let g:syntastic_java_checkstyle_conf_file = '~/bin/jars/sun_checks.xml'
let g:syntastic_java_checkstyle_classpath = '~/bin/jars/checkstyle-6.17-all.jar'

let g:tabgar_width = 30
let g:tagbar_left = 0

let g:delimitMate_jump_expansion = 1

let g:javascript_enable_domhtmlcss = 1

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

nnoremap <silent>tt :call ToggleNERDTreeAndTagbar()<CR>

nnoremap <leader>t :CommandT<CR>

" Easymotion
let g:EasyMotion_smartcase = 1
map <space>l <Plug>(easymotion-lineforward)
map <space>j <Plug>(easymotion-j)
map <space>k <Plug>(easymotion-k)
map <space>h <Plug>(easymotion-linebackward)

let g:EasyMotion_startofline = 0

function! ToggleNERDTreeAndTagbar()
	let w:jumpbacktohere = 1

	" Detect which plugins are open
	if exists('t:NERDTreeBufName')
		let nerdtree_open = bufwinnr(t:NERDTreeBufName) != -1
	else
		let nerdtree_open = 0
	endif
	let tagbar_open = bufwinnr('__Tagbar__') != -1

	" Perform the appropriate action
	if nerdtree_open && tagbar_open
		NERDTreeClose
		TagbarClose
	elseif nerdtree_open
		TagbarOpen
	elseif tagbar_open
		NERDTree
	else
		NERDTree
		TagbarOpen
	endif

	" Jump back to the original window
	for window in range('1', winnr('$'))
		execute window . 'wincmd w'
		if exists('w:jumpbacktohere')
			unlet w:jumpbacktohere
			break
		endif
	endfor
endfunction

let g:lightline = {
	\	'colorscheme': 'powerline',
	\	'active': {
	\		'left': [ [ 'mode', 'paste' ], [ 'fugitive' ], [ 'relativepath' ] ],
	\		'right': [ [ 'syntastic', 'lineinfo' ], [ 'percent' ], [ 'fileformat', 'fileencoding', 'filetype'] ],
	\	},
	\	'component_function': {
	\		'fugitive': 'LightLineFugitive',
	\		'filename': 'LightLineFilename',
	\		'fileformat': 'MyFileformat',
	\		'filetype':	 'MyFiletype',
	\		'fileencoding': 'LightLineFileencoding',
	\		'mode': 'LightLineMode',
	\	},
	\	'component_expand': {
	\		'syntastic': 'SyntasticStatuslineFlag',
	\	},
	\	'component_type': {
	\		'syntastic': 'error',
	\	},
	\	'separator': { 'left': '' , 'right': '' },
	\	'subseparator': { 'left': "|", 'right': "|" }
	\ }

function! LightLineModified()
	return &ft =~ 'help' ? '' : &modified ? '+' : &modifiable ? '' : '-'
endfunction

function! LightLineReadonly()
	return &ft !~? 'help' && &readonly ? 'RO' : ''
endfunction

function! MyFiletype()
	return winwidth(0) > 70 ? (strlen(&filetype) ? &filetype . ' ' . WebDevIconsGetFileTypeSymbol() : 'no ft') : ''
endfunction

function! MyFileformat()
	return winwidth(0) > 70 ? (&fileformat . ' ' . WebDevIconsGetFileTypeSymbol()) : ''
endfunction

function! LightLineFileencoding()
	return winwidth(0) > 70 ? (strlen(&fenc) ? &fenc : &enc) : ''
endfunction

augroup AutoSyntastic
	autocmd!
	autocmd BufWritePost *.c, *.cpp call s:syntastic()
augroup END
function! s:syntastic()
	SyntasticCheck
	call lightline#update()
endfunction

function! LightLineMode()
	let fname = expand('%:t')
	return fname == '__Tagbar__' ? 'Tagbar' :
		\ fname == 'ControlP' ? 'CtrlP' :
		\ fname == '__Gundo__' ? 'Gundo' :
		\ fname == '__Gundo_Preview__' ? 'Gundo Preview' :
		\ fname =~ 'NERD_tree' ? 'NERDTree' :
		\ &ft == 'unite' ? 'Unite' :
		\ &ft == 'vimfiler' ? 'VimFiler' :
		\ winwidth(0) > 60 ? lightline#mode() : ''
endfunction

let g:tagbar_status_func = 'TagbarStatusFunc'

function! TagbarStatusFunc(current, sort, fname, ...) abort
	let g:lightline.fname = a:fname
	return lightline#statusline(0)
endfunction

function! LightLineFugitive()
	try
		if expand('%:t') !~? 'Tagbar\|NERD' && exists('*fugitive#head')
			let mark = ''  " edit here for cool mark
			let _ = fugitive#head()
			return strlen(_) ? mark._ : ''
		endif
	catch
	endtry
	return ''
endfunction

function! LightLineFilename()
	let fname = expand('%:t')
	return fname == '__Tagbar__' ? g:lightline.fname :
		\ fname =~ '__Gundo\|NERD_tree' ? '' :
		\ ('' != LightLineReadonly() ? LightLineReadonly() . ' ' : '') .
		\ ('' != fname ? fname : '[No Name]') .
		\ ('' != LightLineModified() ? ' ' . LightLineModified() : '')
endfunction

let g:unite_force_overwrite_statusline = 0

filetype plugin indent on
