" �}�[�N�ݒ� : {{{

" ��{�}�b�v
nnoremap [Mark] <Nop>
nmap <S-m> [Mark]

" ���݈ʒu���}�[�N
if !exists('g:markrement_char')
    let g:markrement_char = [
    \     'a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm',
    \     'n', 'o', 'p', 'q', 'r', 's', 't', 'u', 'v', 'w', 'x', 'y', 'z'
    \ ]
endif
nnoremap <silent>[Mark]m :<C-u>call <SID>AutoMarkrement()<CR>
function! s:AutoMarkrement()
    if !exists('w:markrement_pos')
        let w:markrement_pos = 0
    else
        let w:markrement_pos = (w:markrement_pos + 1) % len(g:markrement_char)
    endif
    execute 'mark' g:markrement_char[w:markrement_pos]
    echo 'marked' g:markrement_char[w:markrement_pos]
endfunction

" ��/�O�̃}�[�N
nnoremap [Mark]n ]`
nnoremap [Mark]p [`

" �ꗗ�\��
nnoremap [Mark]l :<C-u>marks<CR>

" �O��I���ʒu�Ɉړ�
" autocmd MyAutoCmd BufReadPost * if line("'\"") > 0 && line("'\"") <= line('$') | exe 'normal g`"' | endif

" �o�b�t�@�ǂݍ��ݎ��Ƀ}�[�N��������
autocmd BufReadPost * delmarks!

" }}}
