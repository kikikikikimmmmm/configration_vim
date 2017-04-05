" vim‚ÌConfig‚ğread

function! SetDefaultDisplay()
	" guifont‚ªæ‚Å‚È‚¢‚Ælines‚Æcolumns‚ª•Ï‚í‚Á‚Ä‚µ‚Ü‚¤
	set guifont=MS_Gothic:h8:cSHIFTJIS
	set lines=50
	set columns=180
endfunction

call SetDefaultDisplay()

"XIM setup
set guifontset=-misc-fixed-medium-r-normal--13-*
set imactivatekey=S-space
set iminsert=0
set imsearch=0
set tabstop=4

"set guifont=‚l‚r_ƒSƒVƒbƒN:h10:cSHIFTJIS
function! ResizeFont(adjust)
	let l:font_size = substitute(&guifont, '^.*:h\([^:]*\).*$', '\1', '')
	let l:font_size = l:font_size + (a:adjust)

	if 0 < l:font_size && l:font_size <= 32
		let l:guifont = substitute(&guifont, ':h\([^:]*\)', ':h' . l:font_size, '')
		let &guifont = l:guifont
	else
		call SetDefaultDisplay()
		let l:font_size = substitute(&guifont, '^.*:h\([^:]*\).*$', '\1', '')
	end

	return l:font_size
endfunction

let g:size=0
nmap <F3>	:let g:size = ResizeFont(1)<CR>:echo "font size = " . g:size<CR>
nmap <s-F3>	:let g:size = ResizeFont(-1)<CR>:echo "font size = " . g:size<CR>
nmap <M-F3>	:call SetDefaultDisplay()<CR>:echo "reset!"<CR>

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
set noautochdir

colorscheme bensday
