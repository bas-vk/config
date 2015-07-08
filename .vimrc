syntax enable

set background=dark
let g:solarized_termtrans=1
"let g:solarized_termcolors=256
colorscheme solarized

set tabstop=4 " number of visual spaces per TAB
set softtabstop=4 " number of spaces in tab when editing

set number " show line numbers
set showcmd " show command in bottom bar

set cursorline " high current line

filetype indent on "load filetype specific indent files

set wildmenu " visual autocomplete for command menu

set lazyredraw " redraw only when needed

set showmatch " high matching [{(}}]

set incsearch " start search as chars are entered
set hlsearch " highlight matches

"This unsets the "last search pattern" register by hitting return
nnoremap <CR> :noh<CR><CR>

set foldenable          " enable folding
set foldlevelstart=10   " open most folds by default
set foldnestmax=10      " 10 nested fold max

" space open/closes folds
nnoremap <space> za

set foldmethod=indent

" Vundle plugins
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'fatih/vim-go'

"vim-go plugin config
let g:go_highlight_functions=1
let g:go_highlight_methods=1
let g:go_highlight_structs=1
let g:go_highlight_operators=1
let g:go_highlight_build_constraints=1
let g:go_fmt_command="goimports"

" allows cursor change in tmux mode
if exists('$TMUX')
	let &t_SI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=1\x7\<Esc>\\"
	let &t_EI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=0\x7\<Esc>\\"
else
	let &t_SI = "\<Esc>]50;CursorShape=1\x7"
	let &t_EI = "\<Esc>]50;CursorShape=0\x7"
endif

set backup
set backupdir=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set backupskip=/tmp/*,/private/tmp/*
set directory=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set writebackup

