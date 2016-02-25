autocmd BufRead,BufNewFile,TextChangedI *.csv call SetSyntax_CSV()

function! SetSyntax_CSV()
	syntax match csvComment /^;.*$/
	highlight default link csvComment Comment

	"For target_func_list.csv
	syntax match TrunkModified /^.*#trunk_modified_[0-9]*.*$/
	highlight default link TrunkModified Constant

	syntax match UtFixing /^.*ut\sfixing.*$/
	hi UtFixing ctermfg=Magenta
	highlight default link UtFixing PreProc

	syntax match Refactoring /^;.*#now_refactoring#.*$/
	highlight default link Refactoring Special

	syntax match Suspended /^;.*#suspended#.*$/
	highlight default link Suspended WarningMsg

	syntax match Refactored /^;.*refactored\sfunction.*$/
	highlight default link Refactored LineNr

	"For WinAMS Test CSV
	syntax match TestCSVHeader /^mod,.*/
	highlight default link TestCSVHeader NonText

	syntax match TestCSVIO /^#COMMENT,.*/
	highlight default link TestCSVIO Comment
endfunction
