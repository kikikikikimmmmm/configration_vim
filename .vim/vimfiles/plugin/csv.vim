autocmd BufRead,BufNewFile,TextChangedI *.csv call SetSyntax_CSV()

function! SetSyntax_CSV()
	syntax match csvComment /^;.*$/
	hi csvComment ctermfg=blue

	"For target_func_list.csv
	syntax match csvComment /^;.*$/
	hi csvComment ctermfg=Blue

	syntax match TrunkModified /^.*#trunk_modified_[0-9]*.*$/
	hi TrunkModified ctermfg=DarkYellow

	syntax match UtFixing /^.*ut\sfixing.*$/
	hi UtFixing ctermfg=Magenta

	syntax match Refactoring /^;.*#now_refactoring#.*$/
	hi Refactoring ctermfg=DarkCyan

	syntax match Suspended /^;.*#suspended#.*$/
	hi Suspended ctermfg=Red

	syntax match Refactored /^;.*refactored\sfunction.*$/
	hi Refactored ctermfg=DarkGray


	"For WinAMS Test CSV
	syntax match TestCSVHeader /^mod,.*/
	hi TestCSVHeader ctermfg=Red

	syntax match TestCSVIO /^#COMMENT,.*/
	hi TestCSVIO ctermfg=Yellow
endfunction
