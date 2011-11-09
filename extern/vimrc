" Use Vim settings, rather then Vi settings (much better!).
" This must be first, because it changes other options as a side effect.
"set nocompatible

" allow backspacing over everything in insert mode
"set backspace=indent,eol,start

if !exists("colors_name")
    " Use the macvim color scheme by default
    colorscheme torte
endif

if has("vms")
  set nobackup		" do not keep a backup file, use versions instead
else
  set backup		" keep a backup file
endif
set history=50		" keep 50 lines of command line history
set ruler		" show the cursor position all the time
set showcmd		" display incomplete commands
set incsearch		" do incremental searching

" Don't use Ex mode, use Q for formatting
map Q gq


" Only do this part when compiled with support for autocommands.
if has("autocmd")

  " Enable file type detection.
  " Use the default filetype settings, so that mail gets 'tw' set to 72,
  " 'cindent' is on in C files, etc.
  " Also load indent files, to automatically do language-dependent indenting.
  filetype plugin indent on

  " Put these in an autocmd group, so that we can delete them easily.
  augroup vimrcEx
  au!

  " For all text files set 'textwidth' to 78 characters.
  autocmd FileType text setlocal textwidth=78

  autocmd BufEnter * cd %:p:h
  
  " When editing a file, always jump to the last known cursor position.
  " Don't do it when the position is invalid or when inside an event handler
  " (happens when dropping a file on gvim).
  autocmd BufReadPost *
    \ if line("'\"") > 0 && line("'\"") <= line("$") |
    \   exe "normal g`\"" |
    \ endif

  augroup END

else

  set autoindent		" always set autoindenting on

endif " has("autocmd")

" Tabs and indenting
set softtabstop=0
set shiftwidth=4
set tabstop=4

" Do not insert two spaces after a '.', '?' and '!' with a join command
set nojoinspaces

" Disable evaluating mode lines in files
set nomodeline

" Keep backups in one place
set backupdir=~/.vim_backup

"fold mode"
set foldmethod=syntax
set foldlevel=100

"show line number"
set nu

"encoding"
set fileencodings=ucs-bom,utf-8,utf-16,gb18030,big5,latin1

"taglist plugin"
let Tlist_Show_One_File=1
let Tlist_Exit_OnlyWindow=1

"winmanager plugin"
let g:winManagerWindowLayout='FileExplorer|TagList'
nmap wm :WMToggle<cr>

"completion"
	" automatically open and close the popup menu / preview window
au CursorMovedI,InsertLeave * if pumvisible() == 0|silent! pclose|endif
set completeopt=menu,longest
		
"quickfix shotcut"
nmap <F6> :cn<cr>
nmap <F7> :cp<cr>

"cloud input method"
let g:vimim_cloud='google'
