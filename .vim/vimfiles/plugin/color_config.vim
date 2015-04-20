" Enable syntax highlighting
" F‚Ã‚¯‚ğƒIƒ“
" syntax on

let s:is_cygwin = has('win32unix')

if s:is_cygwin
	if &term =~# '^xterm' && &t_Co < 256
		set t_Co=256  " Extend terminal color of xterm
	endif

	if &term !=# 'cygwin'  " not in command prompt
    " Change cursor shape depending on mode
		let &t_ti .= "\e[1 q"
		let &t_SI .= "\e[5 q"
		let &t_EI .= "\e[1 q"
		let &t_te .= "\e[0 q"
	endif
endif

" arrange color
autocmd ColorScheme * highlight Visual ctermbg=136
autocmd ColorScheme * highlight Search ctermbg=167
colorscheme molokai

