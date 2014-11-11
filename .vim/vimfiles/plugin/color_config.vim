" Enable syntax highlighting
" F‚Ã‚¯‚ğƒIƒ“
syntax on

let s:is_cygwin = has('win32unix')

if s:is_cygwin
	if &term =~# '^xterm' && &t_Co < 256
		set t_Co=256
	endif
endif

colorscheme molokai
hi Visual ctermbg=24

