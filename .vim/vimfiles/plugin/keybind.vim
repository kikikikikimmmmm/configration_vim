" Y�̓����D��C�Ɠ����ɂ���
map Y y$
" 1���������̓����N���Ȃ�
nnoremap x "_x
" ������̋����\������������
nmap <Esc><Esc>		:nohl<CR><Esc>
" ���������ӏ�����ړ��������Ȃ�
nmap * *N
" �s��܂�Ԃ��\�����Ȃ�
nmap <Leader>w		:set wrap!<CR>
" .vimrc���J��
nmap <Space>.		:<C-u>edit $MYVIMRC<CR>
" �A���\��t��
vmap <silent>		<C-p> "0p<CR>

" �����}��
nmap date			<ESC>a<C-R>=strftime("%Y/%m/%d")<CR><ESC>
nmap time			<ESC>a<C-R>=strftime("%H:%M:%S")<CR><ESC>
" �L�ڂ���Ă���t�@�C�����J��
nmap gv				:vertical wincmd f<CR>

" window control �Ƃ肠����
" nmap <C-k>			<C-W>+
" nmap <C-j>			<C-W>-
" nmap <C-l>			<C-W>>
" nmap <C-h>			<C-W><
nmap ;			4<C-W>+
nmap -			4<C-W>-
noremap L		<C-L>
nmap )			<C-W>>
nmap (			<C-W><
nmap <C-k>		<C-W>k
nmap <C-j>		<C-W>j
nmap <C-l>		<C-W>l
nmap <C-h>		<C-W>h
nmap <C-Q>		:let @q=expand('%')<CR>
nmap =			<C-W>=
" �o�b�t�@�ړ�
nmap <C-n>			:bp<CR>
nmap <C-p>			:bn<CR>
" �^�u�ړ�
nmap <C-PageDown>	gt
nmap <C-PageUp>		gT
" �}�������ړ�
imap <C-h>			<Left>
imap <C-j>			<Down>
imap <C-k>			<Up>
imap <C-l>			<Right>
" ���͕⊮ Nul��C-Space�̈Ӗ��ł��邽�߂��̂悤�ɂ���
imap <Nul>			<C-p>

" �^�O�������̓��X�g��\������
nmap <C-]>			g<C-]>

" source tree
nmap <Leader>tl		:Tlist<CR>
nmap <C-C>			:cd %:h<CR>:pwd<CR>
nmap <S-C>			:cd ..<CR>:pwd<CR>

" C�f�o�b�O�p
nmap #p				oprintf("%s %d\n", __FILE__, __LINE__);
nmap #d				:.s/\/\*//:.s/\*\///

" �������O�̃w�b�_�t�@�C�����J�� todo:�����Ή�����.h�t�@�C�����J�������ł悢�H
nmap <F2>			:<C-u>hide edit %<.h<CR>
" diff�̃V���[�g�J�b�g
nmap <F5>			:difft<CR><C-w>w:difft<CR><C-w>w
nmap <C-F5>			:diffo<CR><C-w>w:diffo<CR><C-w>w
nmap <S-F5>			:bd!<CR>:bd!<CR>
" cvs/svn diff
nmap <F6>			:call SvnDiff_ShowList()<CR>
nmap <F7>			:call SvnDiff_ShowDiff(0)<CR>
nmap <C-F7>			:call SvnDiff_ShowDiff(1)<CR>
nmap <S-F7>			:call SvnDiff_ShowDiff(2)<CR>
" vimgrep
nmap <F8>			:call TagSearch(0)<CR>:cw<CR>
" svn annotate
nmap <F9>			:call SvnAnnotate_ShowResult(expand("%"))<CR>
nmap <F10>			:call SvnLog_ShowResult(expand("%"))<CR>
" start up explorer
nmap <F12>			:silent !explorer.exe `cygpath -wa %:h`<CR>:redraw!<CR>

" get revision(�`�悪���������Ȃ邽�ߍĕ`�悷��)
nmap <Leader>rev	:let rev=SvnDiff_GetRevision()<CR>:redraw!<CR>:echo rev<CR>

" sub mode
"	call submode#enter_win('winsize', 'n', '<C-l>', '<C-w>>')
"	call submode#enter_win('winsize', 'n', '<C-h>', '<C-w><')
"	call submode#enter_win('winsize', 'n', '<C-k>', '<C-w>-')
"	call submode#enter_win('winsize', 'n', '<C-j>', '<C-w>+')
"	call submode#map('winsize', 'n', '<C-l>', '<C-w>>')
"	call submode#map('winsize', 'n', '<C-h>', '<C-w><')
"	call submode#map('winsize', 'n', '<C-k>', '<C-w>-')
"	call submode#map('winsize', 'n', '<C-j>', '<C-w>+')
