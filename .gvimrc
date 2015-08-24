" vim‚ÌConfig‚ðread

set lines=50
set columns=180

"XIM setup
set guifontset=-misc-fixed-medium-r-normal--13-*
set imactivatekey=S-space
set iminsert=0
set imsearch=0
set tabstop=4

"set guifont=‚l‚r_ƒSƒVƒbƒN:h10:cSHIFTJIS
set guifont=‚l‚r_ƒSƒVƒbƒN:h8:cSHIFTJIS

"coler reverse
let g:bg_coler='black'
highlight Normal guibg='black' guifg='white'
function! Reverse_Coler()
    if g:bg_coler=='white'
        highlight Normal guibg='black' guifg='white'
        highlight Search guifg='black'
        let g:bg_coler='black'
    else
        highlight Normal guibg='white' guifg='black'
        let g:bg_coler='white'
    endif
endfunction
"noremap <C-C> :call Reverse_Coler()<CR>

set visualbell
set t_vb=
set browsedir=buffer
" set shellslash

colorscheme bensday
