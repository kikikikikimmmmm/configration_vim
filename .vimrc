" vimの外部コマンドとしてgvimを起動する場合
" 設定ファイルを読み込むためにここで変換する必要がある
" todo: もう少しスマートにできないか？
let $VIM='C:/cygwin/home/Administrator/.vim'
let $VIMRUNTIME=$VIM . '/vim74'

set shell=c:/cygwin/bin/bash
set shellpipe=2>
set shellcmdflag=-c
set shellslash

" Vi互換モードをオフ（Vimの拡張機能を有効）
set nocompatible
" バッファを保存しなくても他のバッファを表示できるようにする
set hidden
" コマンドライン補完を便利に
set wildmenu
set wildmode=longest,full
" タイプ途中のコマンドを画面最下行に表示
set showcmd
" 検索語を強調表示（<C-L>を押すと現在の強調表示を解除する）
set hlsearch
" 歴史的にモードラインはセキュリティ上の脆弱性になっていたので、
" オフにして代わりに上記のsecuremodelinesスクリプトを使うとよい。
" set nomodeline
" 検索時に大文字・小文字を区別しない。ただし、検索後に大文字小文字が
" 混在しているときは区別する
set ignorecase
set smartcase
" オートインデント、改行、インサートモード開始直後にバックスペースキーで
" 削除できるようにする。
set backspace=indent,eol,start
set fileformats=unix,dos
" set fileencodings=iso-2022-jp,cp932,sjis,euc-jp,utf-8
set fileencodings=cp932,sjis,euc-jp,utf-8,iso-2022-jp
" オートインデント
set autoindent
" 移動コマンドを使ったとき、行頭に移動しない
set nostartofline
" 画面最下行にルーラーを表示する
set ruler
" ステータスラインを常に表示する
set laststatus=2
" バッファが変更されているとき、コマンドをエラーにするのでなく、保存する
" かどうか確認を求める
set confirm
" ビープの代わりにビジュアルベル（画面フラッシュ）を使う
set visualbell
" そしてビジュアルベルも無効化する
set t_vb=
" 全モードでマウスを有効化
set mouse=a
" コマンドラインの高さを2行に
set cmdheight=2
" キーコードはすぐにタイムアウト。マッピングはタイムアウトしない
set notimeout ttimeout ttimeoutlen=200
" ヤンクでクリップボードコピー
set clipboard+=unnamed
" set clipboard+=autoselect
" タグジャンプ用
if has('path_extra')
	set tags+=.tags;$HOME/.tags
	set path+=$HOME
endif
" 改行して表示しな設定
set wrap!

"------------------------------------------------------------
" インデント関連のオプション
"------------------------------------------------------------
" タブ文字の代わりにスペース2個を使う場合の設定。
" この場合、'tabstop'はデフォルトの8から変えない。
" set shiftwidth=2
" set softtabstop=2
" set expandtab
" インデントにハードタブを使う場合の設定。
" タブ文字を2文字分の幅で表示する。
set shiftwidth=4
set tabstop=4
" コマンドラインの履歴保存数
set history=10000

"------------------------------------------------------------
" NeoBundle
"------------------------------------------------------------
" NeoBundle がインストールされていない時、
" もしくは、プラグインの初期化に失敗した時の処理
function! s:WithoutBundles()
	colorscheme desert
	" その他の処理
endfunction

" NeoBundle よるプラグインのロードと各プラグインの初期化
function! s:LoadBundles()
	" 読み込むプラグインの指定
	NeoBundle 'Shougo/neobundle.vim'
	NeoBundle 'jlanzarotta/bufexplorer'
	NeoBundle 'kana/vim-submode'
	NeoBundle 'vim-scripts/vcscommand.vim'
	NeoBundle 'tomasr/molokai'
	NeoBundle 'vim-scripts/taglist.vim'
	" ...
	" 読み込んだプラグインの設定
	" ...
endfunction

" NeoBundle がインストールされているなら LoadBundles() を呼び出す
" そうでないなら WithoutBundles() を呼び出す
function! s:InitNeoBundle()
	if isdirectory(expand("~/.vim/bundle/neobundle.vim/"))
		filetype plugin indent off
		if has('vim_starting')
			set runtimepath+='~/.vim/bundle/neobundle.vim/'
		endif
		try
			call neobundle#begin(expand('~/.vim/bundle/'))
			NeoBundleFetch 'Shougo/neobundle.vim'
			call s:LoadBundles()
			call neobundle#end()
		catch
			call s:WithoutBundles()
		endtry 
	else
		call s:WithoutBundles()
	endif

	" filetype indent plugin on
	" syntax on
endfunction

call s:InitNeoBundle()

" ファイル名と内容によってファイルタイプを判別し、ファイルタイププラグインを有効にする
filetype indent plugin on

