" Y�̓����D��C�Ɠ����ɂ���
map Y y$
" ������̋����\������������
nnoremap <Esc><Esc> :nohl<CR><Esc>
" �s��܂�Ԃ��\�����Ȃ�
nnoremap <Leader>w  :set wrap!<CR>
" .vimrc���J��
nnoremap <Space>.  :<C-u>edit $MYVIMRC<CR>
" �A���\��t��
vnoremap <silent> <C-p> "0p<CR>
" window control �Ƃ肠����
nmap <C-k>	<C-W>+
nmap <C-j>	<C-W>-
nmap <C-l>	<C-W>>
nmap <C-h>	<C-W><
" �o�b�t�@�ړ�
nmap <C-n>	:bp<CR>
nmap <C-p>	:bn<CR>
" �^�u�ړ�
nmap <C-t>	gt
nmap <S-t>	gT
" �}�������ړ�
imap <C-h> <Left>
imap <C-j> <Down>
imap <C-k> <Up>
imap <C-l> <Right>
" �o�b�t�@�̐V�K�쐬
nmap <C-w>v	:vnew<CR>
nmap <C-w>s	<C-w>n<CR>
" diff�̃V���[�g�J�b�g
nmap <F5>	:difft<CR><C-w>w:difft<CR><C-w>w

" C�f�o�b�O�p
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
