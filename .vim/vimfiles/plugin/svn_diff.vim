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

function! SvnDiff_MakeList(patch_file)
    silent execute
        \ '!svn status | grep -v ''^[?]'' > ' .
        \ a:patch_file
endfunction

function! SvnDiff_MakePatch(patch_target, patch_file_name)
    silent execute 
        \ '!svn diff ' .  a:patch_target .  ' > ' .  a:patch_file_name
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

    call    SvnDiff_MakePatch(l:patch_target, s:patch)

    if getfsize(s:patch) == 0
        echo "Not patch"
    endif

    silent execute ":set columns=165"
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
