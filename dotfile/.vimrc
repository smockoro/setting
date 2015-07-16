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

" encoding settings
set encoding=utf-8
scriptencoding utf-8

" zsh上でsourceすることを防ぐ
"return" 2>&- || "exit"

" Uncomment the next line to make Vim more Vi-compatible
" NOTE: debian.vim sets 'nocompatible'.  Setting 'compatible' changes numerous
" options, so any other options should be set AFTER setting 'compatible'.
"set compatible
set runtimepath^=$HOME/.vim
set runtimepath+=$HOME/.vim/after
if &compatible
  set nocompatible
endif
filetype off

if has('vim_starting')
    set runtimepath+=~/.vim/bundle/neobundle.vim
    call neobundle#begin(expand('~/.vim/bundle/'))
    NeoBundleFetch 'Shougo/neobundle.vim'

    "NeoBundle 'git://github.com/Shougo/clang_complete.git'
    NeoBundle 'git://github.com/Shougo/echodoc.git'
    "NeoBundle 'git://github.com/Shougo/neocomplcache.git'
    NeoBundle 'Shougo/neocomplete'
    NeoBundle 'Shougo/neomru.vim'
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
    "NeoBundle 'Pydiction'
    NeoBundle 'davidhalter/jedi-vim'
    NeoBundle 'kevinw/pyflakes-vim'
    NeoBundle 'nvie/vim-flake8'
    "NeoBundle 'mitechie/pyflakes-pathogen'
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
    NeoBundle 'kana/vim-submode'
    NeoBundle 'tpope/vim-abolish'
    NeoBundle 'git://github.com/tpope/vim-surround'
    NeoBundle 'Lokaltog/powerline', { 'rtp' : 'powerline/bindings/vim'}
    NeoBundle 'alpaca-tc/alpaca_powertabline'
    NeoBundle 'git://github.com/osyo-manga/vim-over'
    NeoBundle 'git://github.com/terryma/vim-expand-region'
    NeoBundle 'git://github.com/coderifous/textobj-word-column.vim'
    "NeoBundle 'git://github.com/mhinz/vim-startify'
    NeoBundle 'tyru/nextfile.vim'
    NeoBundle 'kannokanno/previm'
    NeoBundle 'tyru/open-browser.vim'
    NeoBundle 'git://github.com/Yggdroot/indentLine'
    NeoBundle 'git://github.com/thinca/vim-quickrun'
    NeoBundle 'git://github.com/thinca/vim-qfreplace'
    NeoBundle 'thinca/vim-splash'
    NeoBundle 'thinca/vim-template'
    NeoBundle 'git://github.com/osyo-manga/vim-operator-blockwise'
    NeoBundle 'rhysd/vim-operator-surround'
    NeoBundle 'kana/vim-operator-user'
    NeoBundle 'osyo-manga/unite-quickfix'
    NeoBundle 'osyo-manga/shabadou.vim'

    " Haskell Plugin
    NeoBundle 'git://github.com/eagletmt/ghcmod-vim'
    NeoBundle 'git://github.com/dag/vim2hs'
    NeoBundle 'git://github.com/eagletmt/neco-ghc'
    NeoBundle 'git://github.com/eagletmt/unite-haddock'
    NeoBundle 'git://github.com/kana/vim-filetype-haskell'
    NeoBundle 'git://github.com/thinca/vim-ref'
    NeoBundle 'git://github.com/ujihisa/ref-hoogle'

    " Git Plugin
    NeoBundle 'cohama/agit.vim'
    NeoBundle 'rhysd/committia.vim'

    " En Grammar Check Plugin
    NeoBundle 'rhysd/vim-grammarous'

    " Mark Plugin
    NeoBundle 'jacquesbh/vim-showmarks'
    NeoBundle 'tacroe/unite-mark'

    " Markdown Plugin
    "NeoBundle 'mattn/mkdpreview-vim'
    NeoBundle 'Markdown'
    NeoBundle 'suan/vim-instant-markdown'
  call neobundle#end()
endif

"""""""""""""""""""""""""""""""""""""""""""""
"
"          mark関連の設定
"
"""""""""""""""""""""""""""""""""""""""""""""
" marks {{{
set viminfo='50,\"1000,:0,n~/.vim/viminfo
set foldmethod=marker
let g:showmarks_marks_notime = 1
let g:unite_source_mark_marks = '01abcABCDEFGHIJKLNMOPQRSTUVWXYZ'
let g:showmarks_enable       = 0
if !exists('g:markrement_char')
    let g:markrement_char = [
    \     'A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M',
    \     'N', 'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z',
    \     'a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm',
    \     'n', 'o', 'p', 'q', 'r', 's', 't', 'u', 'v', 'w', 'x', 'y', 'z'
    \ ]
en

fu! s:AutoMarkrement()
    if !exists('b:markrement_pos')
        let b:markrement_pos = 0
    else
        let b:markrement_pos = (b:markrement_pos + 1) % len(g:markrement_char)
    en
    exe 'mark' g:markrement_char[b:markrement_pos]
    echo 'marked' g:markrement_char[b:markrement_pos]
endf

aug show-marks-sync
     au!
     au BufReadPost * sil! ShowMarksOnce
aug END

nnoremap [Mark] <Nop>
nmap ,m [Mark]
nnoremap <silent> [Mark]m :Unite mark<CR>
nnoremap [Mark] :<C-u>call <SID>AutoMarkrement()<CR><CR>:ShowMarksOnce<CR>
com! -bar MarksDelete sil :delm! | :delm 0-9A-Z | :wv! | :ShowMarksOnce
nnoremap <silent>[Mark]d :MarksDelete<CR>
"}}}

filetype plugin indent on
"""""""""""""""""""""""""""""""""""""""""""""
"
"          neocompleteの設定
"
"""""""""""""""""""""""""""""""""""""""""""""

if neobundle#is_installed('neocomplete')
    " neocomplete用設定
    let g:neocomplete#enable_at_startup = 1
    let g:neocomplete#enable_ignore_case = 1
    let g:neocomplete#enable_smart_case = 1
    if !exists('g:neocomplete#keyword_patterns')
        let g:neocomplete#keyword_patterns = {}
    endif
    let g:neocomplete#keyword_patterns._ = '\h\w*'
elseif neobundle#is_installed('neocomplcache')
    " neocomplcache用設定
    let g:neocomplcache_enable_at_startup = 1
    let g:neocomplcache_enable_ignore_case = 1
    let g:neocomplcache_enable_smart_case = 1
    if !exists('g:neocomplcache_keyword_patterns')
        let g:neocomplcache_keyword_patterns = {}
    endif
    let g:neocomplcache_keyword_patterns._ = '\h\w*'
    let g:neocomplcache_enable_camel_case_completion = 1
    let g:neocomplcache_enable_underbar_completion = 1
endif

"""""""""""""""""""""""""""""""""""""""""""""
"
"          neocomplcaheの設定
"
"""""""""""""""""""""""""""""""""""""""""""""
" neocomplete に移行したので同設定をできるように移行しよう
"
" Disable AutoComplPop.
"let g:acp_enableAtStartup = 0
" Use neocomplcache.
"let g:neocomplcache_enable_at_startup = 1
" Use smartcase.
"let g:neocomplcache_enable_smart_case = 1
" Use camel case completion.
"let g:neocomplcache_enable_camel_case_completion = 1
" Use underbar completion.
"let g:neocomplcache_enable_underbar_completion = 1
" Set minimum syntax keyword length.
"let g:neocomplcache_min_syntax_length = 3
"let g:neocomplcache_lock_buffer_name_pattern = '\*ku\*'

" Define dictionary.
"let g:neocomplcache_dictionary_filetype_lists = {
"\ 'default' : '',
"\ 'vimshell' : $HOME.'/.vimshell_hist',
"\ 'scheme' : $HOME.'/.gosh_completions'
"\ }

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

""""""""""""""""""""""""""""""""""""""""""""
"
"            neco-ghcの設定
"
""""""""""""""""""""""""""""""""""""""""""""
let g:ycm_semantic_triggers = {'haskell': ['.']}
let g:necoghc_enable_detailed_browse = 1

""""""""""""""""""""""""""""""""""""""""""""
"
"            ghcmod-vimの設定
"
""""""""""""""""""""""""""""""""""""""""""""
let $PATH = $PATH.':'.expand('/Users/mockoro/Library/Haskell/bin/')
"let $PATH = $PATH.':'.expand('~/.cabal/bin')


""""""""""""""""""""""""""""""""""""""""""""
"
"            evervimの設定
"
""""""""""""""""""""""""""""""""""""""""""""
let g:evervim_devtoken = 'S=s39:U=5bfcd4:E=14743493e33:C=13feb981237:P=1cd:A=en-devtoken:V=2:H=e94ee9e2a26cf43ec8b3df6a6b7fc917'

""""""""""""""""""""""""""""""""""""""""""""
"
"            easymotionの設定
"
""""""""""""""""""""""""""""""""""""""""""""
" ホームポジションに近いキーを使う
let g:EasyMotion_keys='hjklasdfgyuiopqwertnmzxcvbHJKLASDFGYUIOPQWERTNMZXCVB'
" 「'」 + 何かにマッピング
let g:EasyMotion_leader_key="'"
" 1 ストローク選択を優先する
let g:EasyMotion_grouping=1
" カラー設定変更
hi EasyMotionTarget ctermbg=none ctermfg=red
hi EasyMotionShade  ctermbg=none ctermfg=blue

""""""""""""""""""""""""""""""""""""""""""""
"
"            quickrunの設定
"
""""""""""""""""""""""""""""""""""""""""""""
let g:quickrun_config = {
\    '_': {
\       'outputter/buffer/split' : ':botright',
\       'outputter/buffer/close_on_empty' : 1,
\       'runner': 'vimproc',
\       'runner/vimproc/updatetime': 40,
\       'hook/shabadoubi_touch_henshin/enable': 1,
\       'hook/shabadoubi_touch_henshin/wait': 20,
\       'outputter': 'multi:buffer:quickfix',
\       'hook/close_buffer/enable_empty data': 1,
\       'hook/close_buffer/enable_failure': 1,
\       'hook/close_quickfix/enable_exit' : 1,
\      'hook/unite_quickfix/enable_failure' : 1,
\       'hook/close_unite_quickfix/enable_hook_loaded' : 1,
\    },
\}
" Uniteへ出力するとき
"\       'hook/unite_quickfix/enable_failure' : 1,
"\       'hook/close_unite_quickfix/enable_hook_loaded' : 1,

autocmd QuickFixCmdPost *grep* cwindow

""""""""""""""""""""""""""""""""""""""""""""
"
"            unite.vimの設定
"
""""""""""""""""""""""""""""""""""""""""""""
" 入力モードで開始する
" let g:unite_enable_start_insert=1
" バッファ一覧
nnoremap <silent> ,ub :<C-u>Unite buffer<CR>
" ファイル一覧
nnoremap <silent> ,uf :<C-u>UniteWithBufferDir -buffer-name=files file<CR>
" レジスタ一覧
nnoremap <silent> ,ur :<C-u>Unite -buffer-name=register register<CR>
" 最近使用したファイル一覧
nnoremap <silent> ,um :<C-u>Unite file_mru<CR>
" 常用セット
nnoremap <silent> ,uu :<C-u>Unite buffer file_mru<CR>
" 全部乗せ
nnoremap <silent> ,ua :<C-u>UniteWithBufferDir -buffer-name=files buffer file_mru bookmark file<CR>
" ウィンドウを分割して開く
au FileType unite nnoremap <silent> <buffer> <expr> <C-j> unite#do_action('split')
au FileType unite inoremap <silent> <buffer> <expr> <C-j> unite#do_action('split')
" ウィンドウを縦に分割して開く
au FileType unite nnoremap <silent> <buffer> <expr> <C-l> unite#do_action('vsplit')
au FileType unite inoremap <silent> <buffer> <expr> <C-l> unite#do_action('vsplit')
" ESCキーを2回押すと終了する
au FileType unite nnoremap <silent> <buffer> <ESC><ESC> q
au FileType unite inoremap <silent> <buffer> <ESC><ESC> <ESC>q

""""""""""""""""""""""""""""""""""""""""""""
"
"            vimfilerの設定
"
""""""""""""""""""""""""""""""""""""""""""""
nnoremap <silent> ,vf :VimFiler<CR>

""""""""""""""""""""""""""""""""""""""""""""
"
"            vim-templateの設定
"
""""""""""""""""""""""""""""""""""""""""""""
" テンプレート中に含まれる特定文字列を置き換える
augroup MyAutoCmd
    autocmd!
augroup END
autocmd MyAutoCmd User plugin-template-loaded call s:template_keywords()
function! s:template_keywords()
    silent! %s/<+DATE+>/\=strftime('%Y-%m-%d')/g
    silent! %s/<+FILENAME+>/\=expand('%:r')/g
endfunction
" テンプレート中に含まれる'<+CURSOR+>'にカーソルを移動
autocmd MyAutoCmd User plugin-template-loaded
    \   if search('<+CURSOR+>')
    \ |   silent! execute 'normal! "_da>'
    \ | endif

""""""""""""""""""""""""""""""""""""""""""""
"
"            vim-operator-blockwiseの設定
"
""""""""""""""""""""""""""""""""""""""""""""
nnoremap YY <Plug>(operator-blockwise-yank-head)
nnoremap DD <Plug>(operator-blockwise-delete-head)
nnoremap CC <Plug>(operator-blockwise-change-head)

""""""""""""""""""""""""""""""""""""""""""""
"
"            vim-operator-surroundの設定
"
""""""""""""""""""""""""""""""""""""""""""""
nnoremap <silent>sa <Plug>(operator-surround-append)
nnoremap <silent>sd <Plug>(operator-surround-delete)
nnoremap <silent>sr <Plug>(operator-surround-repeat)

""""""""""""""""""""""""""""""""""""""""""""
"
"            committia.vimの設定
"
""""""""""""""""""""""""""""""""""""""""""""
" Gitのデフォルトエディタをvimに変更しておく必要がある？
" Macならば以下のコマンド
" git config --global core.editor /Applications/MacVim.app/Contents/MacOS/Vim
"
let g:committia_hooks = {}
function! g:committia_hooks.edit_open(info)
        " Additional settings
        setlocal spell
        
        " If no commit message, start with insert mode
        if a:info.vcs ==# 'git' && getline(1) ==# ''
          startinsert
        end
        
        " Scroll the diff window from insert mode
        " Map <C-n> and <C-p>
        imap <buffer><C-n> <Plug>(committia-scroll-diff-down-half)
        imap <buffer><C-p> <Plug>(committia-scroll-diff-up-half)
endfunction

""""""""""""""""""""""""""""""""""""""""""""
"
"            vim-submodeの設定
"
""""""""""""""""""""""""""""""""""""""""""""
" ウィンドウサイズの設定を楽に
call submode#enter_with('winsize', 'n', '', '<C-w>>', '<C-w>>')
call submode#enter_with('winsize', 'n', '', '<C-w><', '<C-w><')
call submode#enter_with('winsize', 'n', '', '<C-w>+', '<C-w>-')
call submode#enter_with('winsize', 'n', '', '<C-w>-', '<C-w>+')
call submode#map('winsize', 'n', '', '>', '<C-w>>')
call submode#map('winsize', 'n', '', '<', '<C-w><')
call submode#map('winsize', 'n', '', '+', '<C-w>-')
call submode#map('winsize', 'n', '', '-', '<C-w>+')

" タブ変更をgTgTgT...からgTTTTTT...とできるように変更
call submode#enter_with('changetab', 'n', '', 'gt', 'gt')
call submode#enter_with('changetab', 'n', '', 'gT', 'gT')
call submode#map('changetab', 'n', '', 't', 'gt')
call submode#map('changetab', 'n', '', 'T', 'gT')

" 時系列的にundo/redoをするg+/g-を楽に
call submode#enter_with('undo/redo', 'n', 'g-', 'g-')
call submode#enter_with('undo/redo', 'n', 'g+', 'g+')
call submode#map('undo/redo', 'n', '', '-', 'g-')
call submode#map('undo/redo', 'n', '', '+', 'g+')

" nextfile.vimを使いやすくする
call submode#enter_with('nextfile', 'n', 'r', '<Leader>j', '<Plug>(nextfile-next)')
call submode#enter_with('nextfile', 'n', 'r', '<Leader>k', '<Plug>(nextfile-previous)')
call submode#map('nextfile', 'n', 'r', 'j', '<Plug>(nextfile-next)')
call submode#map('nextfile', 'n', 'r', 'k', '<Plug>(nextfile-previous)')

""""""""""""""""""""""""""""""""""""""""""""
"
"            indent-guidesの設定
"
""""""""""""""""""""""""""""""""""""""""""""
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
set matchtime=1
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
cnoremap <C-a> <Home>
cnoremap <C-e> <End>
cnoremap <C-l> <Right>
cnoremap <C-h> <Left>
"imap <C-b> <ESC>bi
"imap <C-w> <ESC><right>wi
inoremap <C-d> <del>
cnoremap <C-d> <del>
set nobackup
set hidden
set noswapfile
set autoread
syntax on
nnoremap <C-s> :source ~/.vimrc<CR>
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
nnoremap Y y$
" 折り畳みの設定　
" set fdm=indent

" leaderを変更した新しい設定
" 参考 : http://postd.cc/how-to-boost-your-vim-productivity/
let mapleader = "\<Space>"
" nnoremap <Leader>o :CtrlP<CR>
nnoremap <Leader>w :w<CR>
nmap <Leader><Leader> V
vmap v <Plug>(expand_region_expand)
vmap <C-v> <Plug>(expand_region_shrink)
vnoremap <silent> y y`]
vnoremap <silent> p p`]
nnoremap <silent> p p`]
nnoremap <CR> G
nnoremap <BS> gg
noremap gV `[v`]

""""""""""""""""""""""""""""""""""""""""""""
"
"            colorschemeの設定
"
""""""""""""""""""""""""""""""""""""""""""""
colorscheme molokai
set t_Co=256
let g:molokai_original=1
let g:indentLine_color_term = 111
let g:indentLine_color_gui = '#708090'

""""""""""""""""""""""""""""""""""""""""""""
"
"            undofileの設定
"
""""""""""""""""""""""""""""""""""""""""""""
:set undodir=D:~/.vim/undo
