" vim�̊O���R�}���h�Ƃ���gvim���N������ꍇ
" �ݒ�t�@�C����ǂݍ��ނ��߂ɂ����ŕϊ�����K�v������
" todo: ���������X�}�[�g�ɂł��Ȃ����H
let $VIM='C:/cygwin/home/Administrator/.vim'
let $VIMRUNTIME=$VIM . '/vim74'

set shell=c:/cygwin/bin/bash
set shellpipe=2>
set shellcmdflag=-c
set shellslash

" Vi�݊����[�h���I�t�iVim�̊g���@�\��L���j
set nocompatible
" �o�b�t�@��ۑ����Ȃ��Ă����̃o�b�t�@��\���ł���悤�ɂ���
set hidden
" �R�}���h���C���⊮��֗���
set wildmenu
set wildmode=longest,full
" �^�C�v�r���̃R�}���h����ʍŉ��s�ɕ\��
set showcmd
" ������������\���i<C-L>�������ƌ��݂̋����\������������j
set hlsearch
" ���j�I�Ƀ��[�h���C���̓Z�L�����e�B��̐Ǝ㐫�ɂȂ��Ă����̂ŁA
" �I�t�ɂ��đ���ɏ�L��securemodelines�X�N���v�g���g���Ƃ悢�B
" set nomodeline
" �������ɑ啶���E����������ʂ��Ȃ��B�������A������ɑ啶����������
" ���݂��Ă���Ƃ��͋�ʂ���
set ignorecase
set smartcase
" �I�[�g�C���f���g�A���s�A�C���T�[�g���[�h�J�n����Ƀo�b�N�X�y�[�X�L�[��
" �폜�ł���悤�ɂ���B
set backspace=indent,eol,start
set fileformats=unix,dos
" set fileencodings=iso-2022-jp,cp932,sjis,euc-jp,utf-8
set fileencodings=cp932,sjis,euc-jp,utf-8,iso-2022-jp
" �I�[�g�C���f���g
set autoindent
" �ړ��R�}���h���g�����Ƃ��A�s���Ɉړ����Ȃ�
set nostartofline
" ��ʍŉ��s�Ƀ��[���[��\������
set ruler
" �X�e�[�^�X���C������ɕ\������
set laststatus=2
" �o�b�t�@���ύX����Ă���Ƃ��A�R�}���h���G���[�ɂ���̂łȂ��A�ۑ�����
" ���ǂ����m�F�����߂�
set confirm
" �r�[�v�̑���Ƀr�W���A���x���i��ʃt���b�V���j���g��
set visualbell
" �����ăr�W���A���x��������������
set t_vb=
" �S���[�h�Ń}�E�X��L����
set mouse=a
" �R�}���h���C���̍�����2�s��
set cmdheight=2
" �L�[�R�[�h�͂����Ƀ^�C���A�E�g�B�}�b�s���O�̓^�C���A�E�g���Ȃ�
set notimeout ttimeout ttimeoutlen=200
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
" �C���f���g�֘A�̃I�v�V����
"------------------------------------------------------------
" �^�u�����̑���ɃX�y�[�X2���g���ꍇ�̐ݒ�B
" ���̏ꍇ�A'tabstop'�̓f�t�H���g��8����ς��Ȃ��B
" set shiftwidth=2
" set softtabstop=2
" set expandtab
" �C���f���g�Ƀn�[�h�^�u���g���ꍇ�̐ݒ�B
" �^�u������2�������̕��ŕ\������B
set shiftwidth=4
set tabstop=4
" �R�}���h���C���̗���ۑ���
set history=10000

"------------------------------------------------------------
" NeoBundle
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
	NeoBundle 'vim-scripts/taglist.vim'
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
			set runtimepath+='~/.vim/bundle/neobundle.vim/'
		endif
		try
			call neobundle#begin(expand('~/.vim/bundle/'))
			NeoBundleFetch 'Shougo/neobundle.vim'
			call s:LoadBundles()
			call neobundle#end()
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

" �t�@�C�����Ɠ��e�ɂ���ăt�@�C���^�C�v�𔻕ʂ��A�t�@�C���^�C�v�v���O�C����L���ɂ���
filetype indent plugin on

