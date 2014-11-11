syntax on

autocmd BufNewFile,BufRead,TextChangedI *.cpp call SetSyntax_C()
autocmd BufNewFile,BufRead,TextChangedI *.[ch] call SetSyntax_C()

function! SetSyntax_C()
	syn keyword cType		uint ulong ushort uchar boolean ulonglong longlong
	syn keyword cType		08 S08 U16 S16 U32 S32 F32 D64
	syn keyword cConstant	TRUE FALSE
	syn keyword cConstant	MIN MAX OK ERROR OFF ON
endfunction

function! InsertFuncHeader()
	exec "a"
/***************************************************************************
func name:
param:
return:
creater name:
cleate date:
****************************************************************************/
endfunction
