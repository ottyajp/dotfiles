set nocompatible
filetype off

set rtp+=${HOME}/.vim/dein.vim/

"call vundle#begin()

"Plugin 'gmarik/Vundle.vim'

"ALE (Asynchronous Lint Engine)
"Plugin 'https://github.com/w0rp/ale'
"let g:ale_statusline_format = ['E%d', 'W%d', '']
"nmap <silent> <C>j <Plug>(ale_next_wrap)
"nmap <silent> <C>k <Plug>(ale_previous_wrap)

"call vundle#end()

"TweetVim
"Bundle 'basyura/TweetVim'
"Bundle 'mattn/webapi-vim'
"Bundle 'basyura/twibill.vim'
"Bundle 'tyru/open-browser.vim'
"Bundle 'h1mesuke/unite-outline'
"Bundle 'basyura/bitly.vim'
"Bundle 'Shougo/unite.vim'

"TreeView :NERDTree
"Bundle 'scrooloose/nerdtree'
"NERDTree shortcut
"noremap <silent><C-e> :NERDTreeToggle<CR>

"to comment out easily Shift+V => Ctrl+- *2
"Bundle 'tomtom/tcomment_vim'

"Color settings
"Bundle 'tomasr/molokai'
"syntax on
"colorscheme molokai
"hi Comment ctermfg=gray

"coloring to indents
"Bundle 'nathanaelkane/vim-indent-guides'
"let g:indent_guides_enable_on_vim_startup=1
"let g:indent_guides_start_level=1
"let g:indent_guides_auto_colors=0
"autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  ctermbg=darkgreen
"autocmd VimEnter,Colorscheme * :hi IndentGuidesEven ctermbg=darkblue
"let g:indent_guides_color_change_percent=30
"let g:indent_guides_guide_size=1

"tab width setting
"set ts=2 sw=2 sts=0
"set expandtab

"Display line number and Highlight cursor line
"set number
"set cursorline
"hi clear CursorLine
"hi CursorLine ctermbg=darkred

"Status line settings
"Plugin 'itchyny/lightline.vim'
"set laststatus=2
"let g:lightline = {'colorscheme':'wombat',}
"if !has('gui_running')
"  set t_Co=256
"endif

"Background
"Bundle 'miyakogi/seiya.vim'
"let g:seiya_auto_enable=1

"filetype plugin indent on

