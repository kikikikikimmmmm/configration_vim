"for check patch

"export SvnDiff_Patch()
"export SvnDiff_ShowList()
"export SvnDiff_ShowDiff()

set patchexpr=SvnDiff_Patch()
function! SvnDiff_Patch()
    silent execute '!patch -R -o ' . v:fname_out . 
        \ ' ' . v:fname_in . ' < ' . v:fname_diff
endfunction

let s:patch_base=expand("~/.vim")
let s:patch_list=s:patch_base . "/patch_list.tmp"
let s:patch=s:patch_base . "/patch.tmp"
let s:revision=s:patch_base . "/revision.tmp"

function! SvnDiff_MakeList(patch_file)
    silent execute
        \ '!svn status | grep -v ''^[?]'' > ' .
        \ a:patch_file
endfunction

function! SvnDiff_MakePatch(patch_target, patch_file_name)
    silent execute 
        \ '!svn diff ' .  a:patch_target .  ' > ' .  a:patch_file_name
endfunction

function! SvnDiff_GetRevision()
	silent execute '!LC_ALL=en_US.UTF8 svn info % | grep -e "Last\ Changed\ Rev:\ " | sed -e "s/Last\ Changed\ Rev:\ //" > '
				\ . s:revision
	silent execute ':e ' . s:revision
	let l:revision = getline(".")
	" todo : 判定は0でよいのか？
	if l:revision == 0
		echo 'can not get revision number'
		let l:revision=-1
	endif
	silent execute ':bd'
	return l:revision
endfunction

function! SvnDiff_MakePatchLastUpdate(patch_target, patch_file_name)
	let l:revision = SvnDiff_GetRevision()
	let l:revision -= -1
    silent execute 
        \ '!svn diff -r'
		\ . l:revision . ' '
		\ . a:patch_target .  ' > ' .  a:patch_file_name
endfunction

"type == 0:target is Modified file in $VIM/patch_list.tmp
"type == 1:target is current file
function! SvnDiff_ShowDiff(type)
    if a:type == 0
        let l:line=getline(".")
        let l:modifiled_file='^[CM][ ]\+'

        if match(l:line, l:modifiled_file) == -1
            echo 'this file is not modefied'
            return
        end

        let l:patch_target=substitute(l:line, l:modifiled_file, "", "")
    else
        let l:patch_target=expand("%")
    endif
   
    if getftime(l:patch_target) == -1
        echo "Not such file"
        return
    endif

	if a:type == 2
		call SvnDiff_MakePatchLastUpdate(l:patch_target, s:patch)
	else
		call SvnDiff_MakePatch(l:patch_target, s:patch)
	endif

    if getfsize(s:patch) == 0
        echo "Not patch"
    endif

    silent execute ":e " . l:patch_target
    silent execute ":vert diffpatch " . s:patch
    silent execute "normal \<c-w>\<c-l>"
endfunction

function! SvnDiff_ShowList()
    call SvnDiff_MakeList(s:patch_list)
    if getftime(s:patch_list) == -1
        echo "Cannot make " . s:patch_list
        return
    endif
    silent execute ":e " . s:patch_list
endfunction


command! -nargs=0 SvnDiffList call SvnDiff_ShowList()
command! -nargs=0 SvnDiff     call SvnDiff_ShowDiff(0)
