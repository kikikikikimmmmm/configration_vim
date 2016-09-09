let s:search_result=$VIM . "/vim_grep.tmp"
let s:search_base_dir="."

function! TagSearch(search_type, search_word)
	if a:search_type=='0'
		execute '!grep -RnH '
			\ '--include ''*.[chCH]'' --include ''*.cpp'' '
			\ '--include ''*.cc'' --include ''*.rb'' '''
			\ . a:search_word
			\ . ''' '
			\ . s:search_base_dir
			\ . ' | sed ''s/:\\([1-9][0-9]*\\):/|\\1| /g'' > '
			\ . s:search_result
	elseif a:search_type=='1'
		execute '!grep -RnH '
			\ '--exlude-dir=''.svn'' --exclude=''.*'' -exclude=''tags'' '''
			\ . a:search_word
			\ . ''' '
			\ . s:search_base_dir
			\ . ' | sed ''s/:\\([1-9][0-9]*\\):/|\\1| /g'' > ' 
			\ . s:search_result
	endif
	silent execute "cf " . s:search_result
endfunction

function! GetTargetTag(type)
	if(a:type=='0')
		let l:search_tag=s:prev_word()
		" let l:search_tag=expand("<cword>")
		echo "tag : " . l:search_tag
	elseif(a:type=='1')
		let l:search_tag=input("tag : ")
	elseif(a:type=='2')
		let l:search_tag=@*
		echo "tag : " . l:search_tag
	endif
	return l:search_tag
endfunction

function! GetTagSearchBaseDir()
	let l:search_base_dir=input("base_dir : ")
	if(isdirectory(l:search_base_dir))
		let s:search_base_dir=l:search_base_dir
	else
		let s:search_base_dir="."
	endif
endfunction

function! s:prev_word()
	let line=getline(".")
	if line[col(".") - 1] =~ '\w'
		return expand("<cword>")
	else
		return substitute(strpart(line, 0, col(".") - 1), '^.\{-}\(\w\+\)\W*$', '\1', '')
	endif
endfunction
