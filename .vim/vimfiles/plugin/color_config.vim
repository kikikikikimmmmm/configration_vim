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
autocmd ColorScheme * highlight Visual		ctermbg=136			guibg=#F8DC85
autocmd ColorScheme * highlight Search		ctermbg=167			gui=bold guifg=#A6E22E guibg=#455354
autocmd ColorScheme * highlight DiffAdd		guibg=#164082
autocmd ColorScheme * highlight DiffChange	guibg=aquamarine4
autocmd ColorScheme * highlight DiffDelete	gui=bold			guifg=DarkYellow guibg=#164082
autocmd ColorScheme * highlight DiffText 	gui=bold			guibg=firebrick3

colorscheme molokai

