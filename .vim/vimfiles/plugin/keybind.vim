" Yの動作をDやCと同じにする
map Y y$
" 検索後の強調表示を解除する
nnoremap <Esc><Esc> :nohl<CR><Esc>
" 行を折り返し表示しない
nnoremap <Leader>w  :set wrap!<CR>
" .vimrcを開く
nnoremap <Space>.  :<C-u>edit $MYVIMRC<CR>
" 連続貼り付け
vnoremap <silent> <C-p> "0p<CR>
" window control とりあえず
nmap <C-k>	<C-W>+
nmap <C-j>	<C-W>-
nmap <C-l>	<C-W>>
nmap <C-h>	<C-W><
" バッファ移動
nmap <C-n>	:bp<CR>
nmap <C-p>	:bn<CR>
" タブ移動
nmap <C-t>	gt
nmap <S-t>	gT
" 挿入時も移動
imap <C-h> <Left>
imap <C-j> <Down>
imap <C-k> <Up>
imap <C-l> <Right>
" バッファの新規作成
nmap <C-w>v	:vnew<CR>
nmap <C-w>s	<C-w>n<CR>
" diffのショートカット
nmap <F5>	:difft<CR><C-w>w:difft<CR><C-w>w

" Cデバッグ用
nmap #p oprintf("%s %d\n", __FILE__, __LINE__);
nmap #d :.s/\/\*//:.s/\*\///

" cvs/svn diff
nmap <F6>	:call SvnDiff_ShowList()<CR>
nmap <F7>	:call SvnDiff_ShowDiff(0)<CR>
nmap <C-F7>	:call SvnDiff_ShowDiff(1)<CR>

" svn annotate
nmap <F9>	:call SvnAnnotate_ShowResult(expand("%"))<CR>

" sub mode
"	call submode#enter_win('winsize', 'n', '<C-l>', '<C-w>>')
"	call submode#enter_win('winsize', 'n', '<C-h>', '<C-w><')
"	call submode#enter_win('winsize', 'n', '<C-k>', '<C-w>-')
"	call submode#enter_win('winsize', 'n', '<C-j>', '<C-w>+')
"	call submode#map('winsize', 'n', '<C-l>', '<C-w>>')
"	call submode#map('winsize', 'n', '<C-h>', '<C-w><')
"	call submode#map('winsize', 'n', '<C-k>', '<C-w>-')
"	call submode#map('winsize', 'n', '<C-j>', '<C-w>+')
