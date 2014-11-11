"For executing svn annotate to current file

let s:svn_annotate_temp="~/.vim/vim_svn_annotate.tmp"

function! SvnAnnotate_MakeTempFile(annotate_file)
    silent execute '!echo --- svn annotate '. a:annotate_file . ' --- > '
        \ . s:svn_annotate_temp
    silent execute '!echo >>' 
        \ . s:svn_annotate_temp
    silent execute '!svn blame '
        \ . a:annotate_file
        \ . ' >> '
        \ . s:svn_annotate_temp
endfunction

function! SvnAnnotate_OpenTempFile()
    silent execute 'new ' . s:svn_annotate_temp
endfunction

function! SvnAnnotate_ShowResult(annotate_file)
    execute 'silent! bdelete ' . s:svn_annotate_temp
    execute SvnAnnotate_MakeTempFile(a:annotate_file) 
    execute SvnAnnotate_OpenTempFile()
endfunction
