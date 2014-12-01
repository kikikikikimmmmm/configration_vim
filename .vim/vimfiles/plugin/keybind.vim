" Y�̓����D��C�Ɠ����ɂ���
noremap Y y$
" ������̋����\������������
nnoremap <Esc><Esc>		:nohl<CR><Esc>
" �s��܂�Ԃ��\�����Ȃ�
nnoremap <Leader>w		:set wrap!<CR>
" .vimrc���J��
nnoremap <Space>.		:<C-u>edit $MYVIMRC<CR>
" �A���\��t��
vnoremap <silent>		<C-p> "0p<CR>
" window control �Ƃ肠����
nnoremap <C-k>			<C-W>+
nnoremap <C-j>			<C-W>-
nnoremap <C-l>			<C-W>>
nnoremap <C-h>			<C-W><
" �o�b�t�@�ړ�
nnoremap <C-n>			:bp<CR>
nnoremap <C-p>			:bn<CR>
" �^�u�ړ�
nnoremap <C-PageDown>	gt
nnoremap <C-PageUp>		gT
" �}�������ړ�
inoremap <C-h>			<Left>
inoremap <C-j>			<Down>
inoremap <C-k>			<Up>
inoremap <C-l>			<Right>
" �o�b�t�@�̐V�K�쐬
nnoremap <C-w><C-v>		:vnew<CR>
" nnoremap <C-w>s	<C-w>n<CR>
" diff�̃V���[�g�J�b�g
nnoremap <F5>			:difft<CR><C-w>w:difft<CR><C-w>w
nnoremap <Leader>tl		:Tlist<CR>

" C�f�o�b�O�p
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
