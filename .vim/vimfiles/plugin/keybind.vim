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
" �o�b�t�@�ړ�
nmap <C-n>	:bp<CR>
nmap <C-p>	:bn<CR>
" �^�u�ړ�
nmap <C-t>	gt
nmap <S-t>	gT
" �}�������ړ�
imap <c-h> <Left>
imap <c-j> <Down>
imap <c-k> <Up>
imap <c-l> <Right>
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
