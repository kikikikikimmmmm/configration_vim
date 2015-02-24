" to_do: ñ¢äÆê¨

highlight default link GrepWord IncSearch

function! GetVimgrepList()
	silent execute 'call ClearHighlightKeyword()'

	let l:grep_word = s:PrevWord()

	if l:grep_word != ''
		echo 'vimgrep ' . l:grep_word . ' ' . $APP_DIR . '/**/*.c ' . $APP_DIR . '/**/*.h | cw'
		execute 'vimgrep ' . l:grep_word . ' ' . $APP_DIR . '/**/*.c ' . $APP_DIR . '/**/*.h | cw'
		execute 'windo syntax match GrepWord /' . l:grep_word . '/ containedin =.*'
	else
		echo 'no keyword'
	endif
endfunction

function! ClearHighlightKeyword()
	execute 'windo syntax clear GrepWord'
endfunction

function! s:PrevWord()
	let l:line = getline('.')
	if l:line[col('.') - 1] =~ '\w'
		return expand('<cword>')
	else
		return substitute(strpart(l:line, 0, col('.') - 1), '^.\{-}\(\w\+\)\W*$', '\1', '')
	endif
endfunction
