" All system-wide defaults are set in $VIMRUNTIME/debian.vim (usually just
" /usr/share/vim/vimcurrent/debian.vim) and sourced by the call to :runtime
" you can find below.  If you wish to change any of those settings, you should
" do it in this file (/etc/vim/vimrc), since debian.vim will be overwritten
" everytime an upgrade of the vim packages is performed.  It is recommended to
" make changes after sourcing debian.vim since it alters the value of the
" 'compatible' option.

" This line should not be removed as it ensures that various options are
" properly set to work with the Vim-related packages available in Debian.
runtime! debian.vim

" Uncomment the next line to make Vim more Vi-compatible
" NOTE: debian.vim sets 'nocompatible'.  Setting 'compatible' changes numerous
" options, so any other options should be set AFTER setting 'compatible'.
"set compatible
set runtimepath^=$HOME/.vim
set runtimepath+=$HOME/.vim/after
set nocompatible
filetype off

if has('vim_starting')
  set runtimepath+=~/.vim/bundle/neobundle.vim

  call neobundle#rc(expand('~/.vim/bundle/'))
endif
"NeoBundle 'git://github.com/Shougo/clang_complete.git'
NeoBundle 'git://github.com/Shougo/echodoc.git'
NeoBundle 'git://github.com/Shougo/neocomplcache.git'
NeoBundle 'git://github.com/Shougo/neobundle.vim.git'
NeoBundle 'git://github.com/Shougo/unite.vim.git'
NeoBundle 'git://github.com/Shougo/vim-vcs.git'
NeoBundle 'git://github.com/Shougo/vimfiler.git'
NeoBundle 'git://github.com/Shougo/vimshell.git'
NeoBundle 'git://github.com/Shougo/vinarise.git'
NeoBundle 'git://github.com/Shougo/vimproc'
"NeoBundle 'Indent-Guides'
NeoBundle 'EasyMotion'
NeoBundle 'JavaScript-syntax'
NeoBundle 'pangloss/vim-javascript'
NeoBundle 'jQuery'
NeoBundle 'css3-syntax-plus'
NeoBundle 'html5.vim'
NeoBundle 'c.vim'
NeoBundle 'Pydiction'
NeoBundle 'mitechie/pyflakes-pathogen'
"NeoBundle 'git://github.com/Lokaltog/vim-powerline'
NeoBundle 'basyura/TweetVim'
NeoBundle 'mattn/webapi-vim'
NeoBundle 'basyura/twibill.vim'
NeoBundle 'tyru/open-browser.vim'
NeoBundle 'h1mesuke/unite-outline'
NeoBundle 'basyura/bitly.vim'
NeoBundle 'kakkyz81/evervim'
NeoBundle 'git://github.com/thinca/vim-portal'
NeoBundle 'git://github.com/tpope/vim-commentary'
NeoBundle 'git://github.com/kana/vim-textobj-entire'
NeoBundle 'git://github.com/kana/vim-textobj-user'
NeoBundle 'git://github.com/kana/vim-textobj-line'
NeoBundle 'git://github.com/kana/vim-textobj-function'
NeoBundle 'git://github.com/kana/vim-textobj-syntax'
NeoBundle 'git://github.com/tpope/vim-surround'
NeoBundle 'Lokaltog/powerline', { 'rtp' : 'powerline/bindings/vim'}
NeoBundle 'alpaca-tc/alpaca_powertabline'
NeoBundle 'git://github.com/osyo-manga/vim-over'
NeoBundle 'git://github.com/terryma/vim-expand-region'
NeoBundle 'git://github.com/coderifous/textobj-word-column.vim'
NeoBundle 'git://github.com/mhinz/vim-startify'
NeoBundle 'git://git.code.sf.net/p/vim-latex/vim-latex'
NeoBundle 'kannokanno/previm'
NeoBundle 'tyru/open-browser.vim'
NeoBundle 'git://github.com/Yggdroot/indentLine'
NeoBundle 'git://github.com/thinca/vim-quickrun'
NeoBundle 'git://github.com/thinca/vim-qfreplace'
NeoBundle 'git://github.com/osyo-manga/vim-operator-blockwise'
NeoBundle 'osyo-manga/unite-quickfix'
NeoBundle 'osyo-manga/shabadou.vim'

filetype plugin indent on
"neocomplcaheの設定
" Disable AutoComplPop.
let g:acp_enableAtStartup = 0
" Use neocomplcache.
let g:neocomplcache_enable_at_startup = 1
" Use smartcase.
let g:neocomplcache_enable_smart_case = 1
" Use camel case completion.
let g:neocomplcache_enable_camel_case_completion = 1
" Use underbar completion.
let g:neocomplcache_enable_underbar_completion = 1
" Set minimum syntax keyword length.
let g:neocomplcache_min_syntax_length = 3
let g:neocomplcache_lock_buffer_name_pattern = '\*ku\*'

" Define dictionary.
let g:neocomplcache_dictionary_filetype_lists = {
\ 'default' : '',
\ 'vimshell' : $HOME.'/.vimshell_hist',
\ 'scheme' : $HOME.'/.gosh_completions'
\ }

" Define keyword.
"if !exists('g:neocomplcache_keyword_patterns')
"let g:neocomplcache_keyword_patterns = {}
"endif
"let g:neocomplcache_keyword_patterns['default'] = '\h\w*'
"inoremap  neocomplcache#undo_completion()
"inoremap  neocomplcache#complete_common_string()

" Recommended key-mappings.
" : close popup and save indent.
"inoremap  neocomplcache#close_popup() ."\"
" : completion.
"inoremap  pumvisible() ? "\" :"\"
" , : close popup and delete backword char.
"inoremap  neocomplcache#smart_close_popup()."\"
"inoremap  neocomplcache#smart_close_popup()."\"
"inoremap  neocomplcache#close_popup()
"inoremap  neocomplcache#cancel_popup()

"setting of evervim"
let g:evervim_devtoken = 'S=s39:U=5bfcd4:E=14743493e33:C=13feb981237:P=1cd:A=en-devtoken:V=2:H=e94ee9e2a26cf43ec8b3df6a6b7fc917'

"setting of easymotion
" ホームポジションに近いキーを使う
let g:EasyMotion_keys='hjklasdfgyuiopqwertnmzxcvbHJKLASDFGYUIOPQWERTNMZXCVB'
" 「'」 + 何かにマッピング
let g:EasyMotion_leader_key="'"
" 1 ストローク選択を優先する
let g:EasyMotion_grouping=1
" カラー設定変更
hi EasyMotionTarget ctermbg=none ctermfg=red
hi EasyMotionShade  ctermbg=none ctermfg=blue

"indent-guidesの設定
"let g:indent_guides_auto_colors = 0
"autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  guibg=#98fb98 ctermbg=blue
"autocmd VimEnter,Colorscheme * :hi IndentGuidesEven guibg=#00ff7f ctermbg=green
"let g:indent_guides_guide_size = 1
"let g:indent_guides_enable_on_vim_startup = 1
" Vim5 and later versions support syntax highlighting. Uncommenting the next
" line enables syntax highlighting by default.
if has("syntax")
  syntax on
endif

" If using a dark background within the editing area and syntax highlighting
" turn on this option as well
"set background=dark

" Uncomment the following to have Vim jump to the last position when
" reopening a file
"if has("autocmd")
"  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
"endif

" Uncomment the following to have Vim load indentation rules and plugins
" according to the detected filetype.
"if has("autocmd")
"  filetype plugin indent on
"endif

" The following are commented out as they cause vim to behave a lot
" differently from regular Vi. They are highly recommended though.
"set showcmd		" Show (partial) command in status line.
"set showmatch		" Show matching brackets.
"set ignorecase		" Do case insensitive matching
"set smartcase		" Do smart case matching
"set incsearch		" Incremental search
"set autowrite		" Automatically save before commands like :next and :make
"set hidden             " Hide buffers when they are abandoned
"set mouse=a		" Enable mouse usage (all modes)
" Vim5 and later versions support syntax highlighting. Uncommenting the next
" line enables syntax highlighting by default.
if has("syntax")
  syntax on
endif

" If using a dark background within the editing area and syntax highlighting
" turn on this option as well
"set background=dark

" Uncomment the following to have Vim jump to the last position when
" reopening a file
"if has("autocmd")
"  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
"endif

" Uncomment the following to have Vim load indentation rules and plugins
" according to the detected filetype.
"if has("autocmd")
"  filetype plugin indent on
"endif

" The following are commented out as they cause vim to behave a lot
" differently from regular Vi. They are highly recommended though.
"set showcmd   	 " Show (partial) command in status line.
"set showmatch   	 " Show matching brackets.
"set ignorecase   	 " Do case insensitive matching
"set smartcase   	 " Do smart case matching
"set incsearch   	 " Incremental search
"set autowrite   	 " Automatically save before commands like :next and :make
"set hidden         	" Hide buffers when they are abandoned
"set mouse=a   	 " Enable mouse usage (all modes)

" Source a global configuration file if available
if filereadable("/etc/vim/vimrc.local")
  source /etc/vim/vimrc.local
endif

" vimrc add original
set autoindent
set smartindent
set wrapscan
set backspace=indent,eol,start
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set number
nnoremap <C-k> :set number!<CR>
set vb
set relativenumber
nnoremap <C-l> :set relativenumber!<CR>
" 前回終了したカーソル行に移動
autocmd BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$") | exe "normal g`\"" | endif
set showmatch
set laststatus=2
set showcmd
set cursorline

" When insert mode, enable hjkl and enable go to home/end.
inoremap <C-j> <Down>
inoremap <C-k> <Up>
"inoremap { {}<Left>
"inoremap [ []<Left>
"inoremap ( ()<Left>
"inoremap < <><Left>
cmap <C-a> <Home>
cmap <C-e> <End>
cmap <C-l> <Right>
cmap <C-h> <Left>
"imap <C-b> <ESC>bi
"imap <C-w> <ESC><right>wi
imap <C-d> <del>
cmap <C-d> <del>
set nobackup
set hidden
set noswapfile
set autoread
syntax on
nmap <C-s> :source /usr/share/vim/vimrc<CR>
"inoremap <Up> <Nop>
"inoremap <Down> <Nop>
noremap <Up> <Nop>
noremap <Down> <Nop>
noremap <Left> <Nop>
noremap <Right> <Nop>
nnoremap <silent> [b :bprevious<CR>
nnoremap <silent> ]b :bnext<CR>
nnoremap <silent> [B :bfirst<CR>
nnoremap <silent> ]B :blast<CR>
nnoremap <silent> [q :cprevious<CR>
nnoremap <silent> ]q :cnext<CR>
nnoremap <silent> [Q :c<C-u>cfirst<CR>
nnoremap <silent> ]Q :c<C-u>clast<CR>

colorscheme molokai
set t_Co=256
let g:molokai_original=1
let g:indentLine_color_term = 111
let g:indentLine_color_gui = '#708090'

let g:quickrun_config = {
\    '_': {
\       'hook/time/enable': '1',
\       'outputter/buffer/split' : ':botright',
\      'outputter/buffer/close_on_empty' : 1,
\    },
\}

autocmd QuickFixCmdPost *grep* cwindow

"vim-operator-blockwiseの設定
nmap YY <Plug>(operator-blockwise-yank-head)
nmap DD <Plug>(operator-blockwise-delete-head)
nmap CC <Plug>(operator-blockwise-change-head)
