set nocompatible
filetype off

let s:dein_dir = expand('~/dotfiles/.vim')
let s:dein_repo_dir = s:dein_dir . '/repos/github.com/Shougo/dein.vim'

execute 'set runtimepath^=' . s:dein_repo_dir

call dein#begin(s:dein_dir)

call dein#add('Shougo/dein.vim')

"ALE (Asynchronous Lint Engine)
call dein#add('w0rp/ale')
let g:ale_statusline_format = ['E%d', 'W%d', '']
nmap <silent> <C>j <Plug>(ale_next_wrap)
nmap <silent> <C>k <Plug>(ale_previous_wrap)

"TreeView :NERDTree
call dein#add('scrooloose/nerdtree')
"NERDTree shortcut
noremap <silent><C-e> :NERDTreeToggle<CR>

"to comment out easily Shift+V => Ctrl+- *2
call dein#add('tomtom/tcomment_vim')

"Color settings
call dein#add('tomasr/molokai')
syntax on
colorscheme molokai
hi Comment ctermfg=gray

"coloring to indents
call dein#add('nathanaelkane/vim-indent-guides')
let g:indent_guides_enable_on_vim_startup=1
let g:indent_guides_start_level=1
let g:indent_guides_auto_colors=0
autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  ctermbg=darkgreen
autocmd VimEnter,Colorscheme * :hi IndentGuidesEven ctermbg=darkblue
let g:indent_guides_color_change_percent=30
let g:indent_guides_guide_size=1

"tab width setting
set ts=2 sw=2 sts=0
set expandtab

"Display line number and Highlight cursor line
set number
set cursorline
hi clear CursorLine
hi CursorLine ctermbg=darkred

"Status line settings
call dein#add('itchyny/lightline.vim')
set laststatus=2
let g:lightline = {'colorscheme':'wombat',}
if !has('gui_running')
  set t_Co=256
endif

"Background
call dein#add('miyakogi/seiya.vim')
let g:seiya_auto_enable=1

call dein#end()
if dein#check_install()
  call dein#install()
endif

filetype plugin indent on

