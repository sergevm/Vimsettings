" Example Vim graphical configuration.
" Copy to ~/.gvimrc or ~/_gvimrc.

set guifont=Consolas:h12          " Font family and font size.
set antialias                     " MacVim: smooth fonts.
set encoding=utf-8                " Use UTF-8 everywhere.
set guioptions-=T                 " Hide toolbar.
set background=light              " Background.
set lines=45 columns=140          " Window dimensions.

set guioptions-=T                 " No toolbar 
" Background of autocomplete menu
highlight PMenu gui=bold guibg=#CECECE guifg=#444444

colorscheme obsidian2
