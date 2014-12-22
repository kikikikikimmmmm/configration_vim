"For executing svn annotate to current file

let s:svn_annotate_temp="~/.vim/vim_svn_annotate_tmp.c"
let s:svn_log_temp="~/.vim/vim_svn_log_tmp.txt"

function! SvnAnnotate_MakeTempFile(annotate_file)
"	silent execute '!echo --- svn annotate '. a:annotate_file . ' --- > '
"		\ . s:svn_annotate_temp
"	silent execute '!echo >>' 
"		\ . s:svn_annotate_temp
	silent execute '!echo now loading ...'
	" 2 weeks ago
	let day = (60 * 60 * 20) * 14
	let now = localtime()
    silent execute '!svn blame -v '
		\ . '-r{' . strftime("%Y-%m-%d", now-day)
		\ . '}:HEAD ''
        \ . a:annotate_file
        \ . ' > '
        \ . s:svn_annotate_temp
endfunction

function! SvnAnnotate_OpenTempFile()
    silent execute 'bel new ' . s:svn_annotate_temp
endfunction

function! SvnAnnotate_ShowResult(annotate_file)
    execute 'silent! bdelete ' . s:svn_annotate_temp
    execute SvnAnnotate_MakeTempFile(a:annotate_file) 
    execute SvnAnnotate_OpenTempFile()
endfunction

function! SvnLog_MakeTempFile(log_file)
	silent execute '!echo now loading ...'
	" 2 weeks ago
	let day = (60 * 60 * 20) * 14
	let now = localtime()
    silent execute '!svn log -v '
		\ . '-r{' . strftime("%Y-%m-%d", now-day)
		\ . '}:HEAD ''
        \ . a:log_file
        \ . ' > '
        \ . s:svn_log_temp
endfunction

function! SvnLog_OpenTempFile()
    silent execute 'vnew ' . s:svn_log_temp
endfunction

function! SvnLog_ShowResult(log_file)
    execute 'silent! bdelete ' . s:svn_log_temp
    execute SvnLog_MakeTempFile(a:log_file) 
    execute SvnLog_OpenTempFile()
endfunction
