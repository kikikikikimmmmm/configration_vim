" diff‚ð•Ö—˜‚É
command! -bar -nargs=+ -complete=file Vdiff call s:vertical_diff(<f-args>)

function! s:vertical_diff(...)
	if a:0 == 1
		tabedit %:p
		exec 'rightbelow vertical diffsplit ' . a:1
	else
		exec 'tabedit ' . a:1
		for l:file in a:000[1 :]
			exec 'rightbelow vertical diffsplit ' . l:file
		endfor
	endif
endfunction
