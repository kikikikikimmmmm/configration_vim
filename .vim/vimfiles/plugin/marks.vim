" マーク設定 : {{{

" 基本マップ
nnoremap [Mark] <Nop>
nmap <S-m> [Mark]

" 現在位置をマーク
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

" 次/前のマーク
nnoremap [Mark]n ]`
nnoremap [Mark]p [`

" 一覧表示
nnoremap [Mark]l :<C-u>marks<CR>

" 前回終了位置に移動
" autocmd MyAutoCmd BufReadPost * if line("'\"") > 0 && line("'\"") <= line('$') | exe 'normal g`"' | endif

" バッファ読み込み時にマークを初期化
autocmd BufReadPost * delmarks!

" }}}
