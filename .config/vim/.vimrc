" --- General Settings ---
set nocompatible            " Use Vim defaults instead of Vi
filetype plugin indent on   " Enable detection, plugins, and indenting
syntax on                   " Enable syntax highlighting
set history=1000            " Remember more commands/search history
set encoding=utf-8          " Standard encoding
set title                   " Show filename in terminal title bar

" --- UI and Appearance ---
colorscheme habamax			" Set the theme
set number                  " Show line numbers
set ruler                   " Show cursor position
set laststatus=2            " Always show status line
set showmode                " Show current mode (Insert, Visual, etc.)
set showcmd                 " Show incomplete commands
set scrolloff=3             " Keep 3 lines above/below cursor when scrolling
set colorcolumn=80          " Visual guide for line length
set hlsearch                " Highlight search results
set incsearch               " Highlight as you type search
set showmatch               " Highlight matching brackets

" --- Tabs and Indentation ---
set expandtab               " Use spaces instead of tabs
set shiftwidth=4            " Size of an indent
set softtabstop=4           " Number of spaces tabs count for
set tabstop=4               " Number of spaces a <Tab> in the file counts for
set autoindent              " Copy indent from current line when starting a new one
set smartindent             " Insert indents automatically

" --- Behavior ---
set backspace=indent,eol,start " Modern backspace behavior
set nowrap                  " Don't wrap long lines
set sidescroll=5            " Scroll horizontally 5 characters at a time
set nojoinspaces            " Prevents inserting two spaces after punctuation on a join

" --- Key Mappings ---
" Toggle line numbers quickly with Ctrl-N (twice)
nnoremap <C-N><C-N> :set invnumber<CR>

" LaTeX compilation
set makeprg=latex\ --interaction\ nonstopmode\ %

" Language Keymap (Slovak)
map <F12> :set keymap=slovak<CR>
map! <F12> <Esc>:set keymap=slovak<CR>a

" --- Status Line ---
" Simplified status line: [Buffer #] FilePath [Type] [Modified] [Line/Total]
set statusline=%n:\ %f\ %y%m%r%=%l/%L,%c\ %P

