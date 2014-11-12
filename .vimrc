" URL: http://vim.wikia.com/wiki/Example_vimrc
" Authors: http://vim.wikia.com/wiki/Vim_on_Freenode
" Description: A minimal, but feature rich, example .vimrc. If you are a
"              newbie, basing your first .vimrc on this file is a good choice.
"              If you're a more advanced user, building your own .vimrc based
"              on this file is still a good idea.

"------------------------------------------------------------
" Features {{{1
"
" These options and commands enable some very useful features in Vim, that
" no user should have to live without.

" Set 'nocompatible' to ward off unexpected things that your distro might
" have made, as well as sanely reset options when re-sourcing .vimrc
" Vi�݊����[�h���I�t�iVim�̊g���@�\��L���j
set nocompatible

"------------------------------------------------------------
" Must have options {{{1
"
" These are highly recommended options.
" ������������I�v�V����

" One of the most important options to activate. Allows you to switch from an
" unsaved buffer without saving it first. Also allows you to keep an undo
" history for multiple files. Vim will complain if you try to quit without
" saving, and swap files will keep you safe if your computer crashes.
" �o�b�t�@��ۑ����Ȃ��Ă����̃o�b�t�@��\���ł���悤�ɂ���
set hidden

" Better command-line completion
" �R�}���h���C���⊮��֗���
set wildmenu
set wildmode=longest,full

" Show partial commands in the last line of the screen
" �^�C�v�r���̃R�}���h����ʍŉ��s�ɕ\��
set showcmd

" Highlight searches (use <C-L> to temporarily turn off highlighting; see the
" mapping of <C-L> below)
" ������������\���i<C-L>�������ƌ��݂̋����\������������j
set hlsearch

" Modelines have historically been a source of security vulnerabilities.  As
" such, it may be a good idea to disable them and use the securemodelines
" script, <http://www.vim.org/scripts/script.php?script_id=1876>.
" ���j�I�Ƀ��[�h���C���̓Z�L�����e�B��̐Ǝ㐫�ɂȂ��Ă����̂ŁA
" �I�t�ɂ��đ���ɏ�L��securemodelines�X�N���v�g���g���Ƃ悢�B
" set nomodeline

"------------------------------------------------------------
" Usability options {{{1
"
" These are options that users frequently set in their .vimrc. Some of them
" change Vim's behaviour in ways which deviate from the true Vi way, but
" which are considered to add usability. Which, if any, of these options to
" use is very much a personal preference, but they are harmless.

" Use case insensitive search, except when using capital letters
" �������ɑ啶���E����������ʂ��Ȃ��B�������A������ɑ啶����������
" ���݂��Ă���Ƃ��͋�ʂ���
set ignorecase
set smartcase

" Allow backspacing over autoindent, line breaks and start of insert action
" �I�[�g�C���f���g�A���s�A�C���T�[�g���[�h�J�n����Ƀo�b�N�X�y�[�X�L�[��
" �폜�ł���悤�ɂ���B
set backspace=indent,eol,start

" When opening a new line and no filetype-specific indenting is enabled, keep
" the same indent as the line you're currently on. Useful for READMEs, etc.
" �I�[�g�C���f���g
set autoindent

" Stop certain movements from always going to the first character of a line.
" While this behaviour deviates from that of Vi, it does what most users
" coming from other editors would expect.
" �ړ��R�}���h���g�����Ƃ��A�s���Ɉړ����Ȃ�
set nostartofline

" Display the cursor position on the last line of the screen or in the status
" line of a window
" ��ʍŉ��s�Ƀ��[���[��\������
set ruler

" Always display the status line, even if only one window is displayed
" �X�e�[�^�X���C������ɕ\������
set laststatus=2

" Instead of failing a command because of unsaved changes, instead raise a
" dialogue asking if you wish to save changed files.
" �o�b�t�@���ύX����Ă���Ƃ��A�R�}���h���G���[�ɂ���̂łȂ��A�ۑ�����
" ���ǂ����m�F�����߂�
set confirm

" Use visual bell instead of beeping when doing something wrong
" �r�[�v�̑���Ƀr�W���A���x���i��ʃt���b�V���j���g��
set visualbell

" And reset the terminal code for the visual bell.  If visualbell is set, and
" this line is also included, vim will neither flash nor beep.  If visualbell
" is unset, this does nothing.
" �����ăr�W���A���x��������������
set t_vb=

" Enable use of the mouse for all modes
" �S���[�h�Ń}�E�X��L����
set mouse=a

" Set the command window height to 2 lines, to avoid many cases of having to
" "press <Enter> to continue"
" �R�}���h���C���̍�����2�s��
set cmdheight=2

" Display line numbers on the left
" �s�ԍ���\��
set number

" Quickly time out on keycodes, but never time out on mappings
" �L�[�R�[�h�͂����Ƀ^�C���A�E�g�B�}�b�s���O�̓^�C���A�E�g���Ȃ�
set notimeout ttimeout ttimeoutlen=200

" Use <F11> to toggle between 'paste' and 'nopaste'
" <F11>�L�[��'paste'��'nopaste'��؂�ւ���
set pastetoggle=<F11>

" �����N�ŃN���b�v�{�[�h�R�s�[
set clipboard+=unnamed
" set clipboard+=autoselect

" �^�O�W�����v�p
if has('path_extra')
	set tags+=.tags;$HOME/.tags
	set path+=$HOME
endif

" ���s���ĕ\�����Ȑݒ�
set wrap!

"------------------------------------------------------------
" Indentation options {{{1
" �C���f���g�֘A�̃I�v�V���� {{{1
"
" Indentation settings according to personal preference.

" Indentation settings for using 2 spaces instead of tabs.
" Do not change 'tabstop' from its default value of 8 with this setup.
" �^�u�����̑���ɃX�y�[�X2���g���ꍇ�̐ݒ�B
" ���̏ꍇ�A'tabstop'�̓f�t�H���g��8����ς��Ȃ��B
" set shiftwidth=2
" set softtabstop=2
" set expandtab

" Indentation settings for using hard tabs for indent. Display tabs as
" two characters wide.
" �C���f���g�Ƀn�[�h�^�u���g���ꍇ�̐ݒ�B
" �^�u������2�������̕��ŕ\������B
set shiftwidth=4
set tabstop=4

" �R�}���h���C���̗���ۑ���
set history=10000

"------------------------------------------------------------
" NeoBundle ���C���X�g�[������Ă��Ȃ����A
" �������́A�v���O�C���̏������Ɏ��s�������̏���
function! s:WithoutBundles()
	colorscheme desert
	" ���̑��̏���
endfunction

" NeoBundle ���v���O�C���̃��[�h�Ɗe�v���O�C���̏�����
function! s:LoadBundles()
	" �ǂݍ��ރv���O�C���̎w��
	NeoBundle 'Shougo/neobundle.vim'
	NeoBundle 'jlanzarotta/bufexplorer'
	NeoBundle 'kana/vim-submode'
	NeoBundle 'vim-scripts/vcscommand.vim'
	NeoBundle 'tomasr/molokai'
	" ...
	" �ǂݍ��񂾃v���O�C���̐ݒ�
	" ...
endfunction

" NeoBundle ���C���X�g�[������Ă���Ȃ� LoadBundles() ���Ăяo��
" �����łȂ��Ȃ� WithoutBundles() ���Ăяo��
function! s:InitNeoBundle()
	if isdirectory(expand("~/.vim/bundle/neobundle.vim/"))
		filetype plugin indent off
		if has('vim_starting')
			set runtimepath+=~/.vim/bundle/neobundle.vim/
		endif
		try
			call neobundle#begin(expand('~/.vim/bundle/'))
			NeoBundleFetch 'Shougo/neobundle.vim'
			call neobundle#end()
			call s:LoadBundles()
		catch
			call s:WithoutBundles()
		endtry 
	else
		call s:WithoutBundles()
	endif

	" filetype indent plugin on
	" syntax on
endfunction

call s:InitNeoBundle()

" Attempt to determine the type of a file based on its name and possibly its
" contents.  Use this to allow intelligent auto-indenting for each filetype,
" and for plugins that are filetype specific.
" �t�@�C�����Ɠ��e�ɂ���ăt�@�C���^�C�v�𔻕ʂ��A�t�@�C���^�C�v�v���O�C����L���ɂ���
filetype indent plugin on

