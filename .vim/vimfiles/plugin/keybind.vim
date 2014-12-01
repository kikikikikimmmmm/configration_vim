" Yの動作をDやCと同じにする
noremap Y y$
" 検索後の強調表示を解除する
nnoremap <Esc><Esc>		:nohl<CR><Esc>
" 行を折り返し表示しない
nnoremap <Leader>w		:set wrap!<CR>
" .vimrcを開く
nnoremap <Space>.		:<C-u>edit $MYVIMRC<CR>
" 連続貼り付け
vnoremap <silent>		<C-p> "0p<CR>
" window control とりあえず
nnoremap <C-k>			<C-W>+
nnoremap <C-j>			<C-W>-
nnoremap <C-l>			<C-W>>
nnoremap <C-h>			<C-W><
" バッファ移動
nnoremap <C-n>			:bp<CR>
nnoremap <C-p>			:bn<CR>
" タブ移動
nnoremap <C-PageDown>	gt
nnoremap <C-PageUp>		gT
" 挿入時も移動
inoremap <C-h>			<Left>
inoremap <C-j>			<Down>
inoremap <C-k>			<Up>
inoremap <C-l>			<Right>
" バッファの新規作成
nnoremap <C-w><C-v>		:vnew<CR>
" nnoremap <C-w>s	<C-w>n<CR>
" diffのショートカット
nnoremap <F5>			:difft<CR><C-w>w:difft<CR><C-w>w
nnoremap <Leader>tl		:Tlist<CR>

" Cデバッグ用
nnoremap #p				oprintf("%s %d\n", __FILE__, __LINE__);
nnoremap #d				:.s/\/\*//:.s/\*\///

" cvs/svn diff
nnoremap <F6>			:call SvnDiff_ShowList()<CR>
nnoremap <F7>			:call SvnDiff_ShowDiff(0)<CR>
nnoremap <C-F7>			:call SvnDiff_ShowDiff(1)<CR>

" svn annotate
nnoremap <F9>			:call SvnAnnotate_ShowResult(expand("%"))<CR>

nnoremap <C-C>			:cd %:h<CR>:pwd<CR>
nnoremap <S-C>			:cd ..<CR>:pwd<CR>

" sub mode
"	call submode#enter_win('winsize', 'n', '<C-l>', '<C-w>>')
"	call submode#enter_win('winsize', 'n', '<C-h>', '<C-w><')
"	call submode#enter_win('winsize', 'n', '<C-k>', '<C-w>-')
"	call submode#enter_win('winsize', 'n', '<C-j>', '<C-w>+')
"	call submode#map('winsize', 'n', '<C-l>', '<C-w>>')
"	call submode#map('winsize', 'n', '<C-h>', '<C-w><')
"	call submode#map('winsize', 'n', '<C-k>', '<C-w>-')
"	call submode#map('winsize', 'n', '<C-j>', '<C-w>+')
