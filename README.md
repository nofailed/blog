# blog

https://nofailed.github.io/blog/

```
sequenceDiagram
    Alice->>John: Hello John, how are you?
    John-->>Alice: Great!
    Alice-)John: See you later!
```

## env setup

**vimrc**
```
set nocompatible              " use Vim settings, not Vi
set number                    " show line numbers
set tabstop=4                 " set tabstop to 4 spaces
set shiftwidth=4              " set shiftwidth to 4 spaces
set softtabstop=4             " set softtabstop to 4 spaces
set expandtab                 " use spaces instead of tabs
set autoindent                " automatically indent new lines
set hlsearch                  " highlight search results
set incsearch                 " show search matches as you type
set ignorecase                " ignore case in searches
set smartcase                 " override ignorecase if search includes uppercase
set laststatus=2              " show status line
set wildmenu                  " show list of completions in command line
set mouse=a                   " enable mouse support
set clipboard=unnamedplus     " use system clipboard
set backspace=indent,eol,start  " make backspace work as expected
syntax on                     " enable syntax highlighting

" Plugin Manager
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" Plugins
call plug#begin('~/.vim/plugged')

Plug 'tpope/vim-fugitive'
Plug 'scrooloose/nerdtree'
Plug 'jiangmiao/auto-pairs'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'pangloss/vim-javascript'
Plug 'plasticboy/vim-markdown'
Plug 'preservim/nerdcommenter'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'

call plug#end()

" Key Mappings
" NERDTree
map <C-n> :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" Fugitive
map <leader>gs :Git<CR>
map <leader>gd :Gvdiffsplit<CR>
map <leader>gc :Git commit -v<CR>

" NERDCommenter
map <leader>c <Plug>NERDCommenterToggle

" Auto Pairs
let g:AutoPairsMapCR = 0
let g:AutoPairsFlyMode = 1
let g:AutoPairsShortcutToggle = '<C-h>'

" Markdown
let g:vim_markdown_folding_disabled = 1

" Airline
let g:airline_theme='dracula'
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#show_tab_count = 1

" Javascript
let g:javascript_enable_domhtmlcss = 1
let g:javascript_plugin_jsdoc = 1

" Vim-Javascript
let g:vim_javascript_json_plugin = 'json'
let g:vim_javascript_warnings = 0

" Syntax
autocmd FileType json setlocal expandtab tabstop=2 shiftwidth=2
autocmd FileType javascript setlocal expandtab tabstop=2 shiftwidth=2
autocmd FileType markdown setlocal spell spelllang=en_us
set nocompatible              " use Vim settings, not Vi
set number                    " show line numbers
set tabstop=4                 " set tabstop to 4 spaces
set shiftwidth=4              " set shiftwidth to 4 spaces
set softtabstop=4             " set softtabstop to 4 spaces
set expandtab                 " use spaces instead of tabs
set autoindent                " automatically indent new lines
set hlsearch                  " highlight search results
set incsearch                 " show search matches as you type
set ignorecase                " ignore case in searches
set smartcase                 " override ignorecase if search includes uppercase
set laststatus=2              " show status line
set wildmenu                  " show list of completions in command line
set mouse=a                   " enable mouse support
set clipboard=unnamedplus     " use system clipboard
set backspace=indent,eol,start  " make backspace work as expected
syntax on                     " enable syntax highlighting

" Plugin Manager
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" Plugins
call plug#begin('~/.vim/plugged')

Plug 'tpope/vim-fugitive'
Plug 'scrooloose/nerdtree'
Plug 'jiangmiao/auto-pairs'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'pangloss/vim-javascript'
Plug 'plasticboy/vim-markdown'
Plug 'preservim/nerdcommenter'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'

call plug#end()

" Key Mappings
" NERDTree
map <C-n> :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" Fugitive
map <leader>gs :Git<CR>
map <leader>gd :Gvdiffsplit<CR>
map <leader>gc :Git commit -v<CR>

" NERDCommenter
map <leader>c <Plug>NERDCommenterToggle

" Auto Pairs
let g:AutoPairsMapCR = 0
let g:AutoPairsFlyMode = 1
let g:AutoPairsShortcutToggle = '<C-h>'

" Markdown
let g:vim_markdown_folding_disabled = 1

" Airline
let g:airline_theme='dracula'
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#show_tab_count = 1

" Javascript
let g:javascript_enable_domhtmlcss = 1
let g:javascript_plugin_jsdoc = 1

" Vim-Javascript
let g:vim_javascript_json_plugin = 'json'
let g:vim_javascript_warnings = 0

" Syntax
autocmd FileType json setlocal expandtab tabstop=2 shiftwidth=2
autocmd FileType javascript setlocal expandtab tabstop=2 shiftwidth=2
autocmd FileType markdown setlocal spell spelllang=en_us
set nocompatible              " use Vim settings, not Vi
set number                    " show line numbers
set tabstop=4                 " set tabstop to 4 spaces
set shiftwidth=4              " set shiftwidth to 4 spaces
set softtabstop=4             " set softtabstop to 4 spaces
set expandtab                 " use spaces instead of tabs
set autoindent                " automatically indent new lines
set hlsearch                  " highlight search results
set incsearch                 " show search matches as you type
set ignorecase                " ignore case in searches
set smartcase                 " override ignorecase if search includes uppercase
set laststatus=2              " show status line
set wildmenu                  " show list of completions in command line
set mouse=a                   " enable mouse support
set clipboard=unnamedplus     " use system clipboard
set backspace=indent,eol,start  " make backspace work as expected
syntax on                     " enable syntax highlighting

" Plugin Manager
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" Plugins
call plug#begin('~/.vim/plugged')

Plug 'tpope/vim-fugitive'
Plug 'scrooloose/nerdtree'
Plug 'jiangmiao/auto-pairs'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'pangloss/vim-javascript'
Plug 'plasticboy/vim-markdown'
Plug 'preservim/nerdcommenter'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'

call plug#end()

" Key Mappings
" NERDTree
map <C-n> :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" Fugitive
map <leader>gs :Git<CR>
map <leader>gd :Gvdiffsplit<CR>
map <leader>gc :Git commit -v<CR>

" NERDCommenter
map <leader>c <Plug>NERDCommenterToggle

" Auto Pairs
let g:AutoPairsMapCR = 0
let g:AutoPairsFlyMode = 1
let g:AutoPairsShortcutToggle = '<C-h>'

" Markdown
let g:vim_markdown_folding_disabled = 1

" Airline
let g:airline_theme='dracula'
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#show_tab_count = 1

" Javascript
let g:javascript_enable_domhtmlcss = 1
let g:javascript_plugin_jsdoc = 1

" Vim-Javascript
let g:vim_javascript_json_plugin = 'json'
let g:vim_javascript_warnings = 0

" Syntax
autocmd FileType json setlocal expandtab tabstop=2 shiftwidth=2
autocmd FileType javascript setlocal expandtab tabstop=2 shiftwidth=2
autocmd FileType markdown setlocal spell spelllang=en_us
set nocompatible              " use Vim settings, not Vi
set number                    " show line numbers
set tabstop=4                 " set tabstop to 4 spaces
set shiftwidth=4              " set shiftwidth to 4 spaces
set softtabstop=4             " set softtabstop to 4 spaces
set expandtab                 " use spaces instead of tabs
set autoindent                " automatically indent new lines
set hlsearch                  " highlight search results
set incsearch                 " show search matches as you type
set ignorecase                " ignore case in searches
set smartcase                 " override ignorecase if search includes uppercase
set laststatus=2              " show status line
set wildmenu                  " show list of completions in command line
set mouse=a                   " enable mouse support
set clipboard=unnamedplus     " use system clipboard
set backspace=indent,eol,start  " make backspace work as expected
syntax on                     " enable syntax highlighting

" Plugin Manager
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" Plugins
call plug#begin('~/.vim/plugged')

Plug 'tpope/vim-fugitive'
Plug 'scrooloose/nerdtree'
Plug 'jiangmiao/auto-pairs'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'pangloss/vim-javascript'
Plug 'plasticboy/vim-markdown'
Plug 'preservim/nerdcommenter'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'

call plug#end()

" Key Mappings
" NERDTree
map <C-n> :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" Fugitive
map <leader>gs :Git<CR>
map <leader>gd :Gvdiffsplit<CR>
map <leader>gc :Git commit -v<CR>

" NERDCommenter
map <leader>c <Plug>NERDCommenterToggle

" Auto Pairs
let g:AutoPairsMapCR = 0
let g:AutoPairsFlyMode = 1
let g:AutoPairsShortcutToggle = '<C-h>'

" Markdown
let g:vim_markdown_folding_disabled = 1

" Airline
let g:airline_theme='dracula'
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#show_tab_count = 1

" Javascript
let g:javascript_enable_domhtmlcss = 1
let g:javascript_plugin_jsdoc = 1

" Vim-Javascript
let g:vim_javascript_json_plugin = 'json'
let g:vim_javascript_warnings = 0

" Syntax
autocmd FileType json setlocal expandtab tabstop=2 shiftwidth=2
autocmd FileType javascript setlocal expandtab tabstop=2 shiftwidth=2
autocmd FileType markdown setlocal spell spelllang=en_us
set nocompatible              " use Vim settings, not Vi
set number                    " show line numbers
set tabstop=4                 " set tabstop to 4 spaces
set shiftwidth=4              " set shiftwidth to 4 spaces
set softtabstop=4             " set softtabstop to 4 spaces
set expandtab                 " use spaces instead of tabs
set autoindent                " automatically indent new lines
set hlsearch                  " highlight search results
set incsearch                 " show search matches as you type
set ignorecase                " ignore case in searches
set smartcase                 " override ignorecase if search includes uppercase
set laststatus=2              " show status line
set wildmenu                  " show list of completions in command line
set mouse=a                   " enable mouse support
set clipboard=unnamedplus     " use system clipboard
set backspace=indent,eol,start  " make backspace work as expected
syntax on                     " enable syntax highlighting

" Plugin Manager
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" Plugins
call plug#begin('~/.vim/plugged')

Plug 'tpope/vim-fugitive'
Plug 'scrooloose/nerdtree'
Plug 'jiangmiao/auto-pairs'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'pangloss/vim-javascript'
Plug 'plasticboy/vim-markdown'
Plug 'preservim/nerdcommenter'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'

call plug#end()

" Key Mappings
" NERDTree
map <C-n> :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" Fugitive
map <leader>gs :Git<CR>
map <leader>gd :Gvdiffsplit<CR>
map <leader>gc :Git commit -v<CR>

" NERDCommenter
map <leader>c <Plug>NERDCommenterToggle

" Auto Pairs
let g:AutoPairsMapCR = 0
let g:AutoPairsFlyMode = 1
let g:AutoPairsShortcutToggle = '<C-h>'

" Markdown
let g:vim_markdown_folding_disabled = 1

" Airline
let g:airline_theme='dracula'
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#show_tab_count = 1

" Javascript
let g:javascript_enable_domhtmlcss = 1
let g:javascript_plugin_jsdoc = 1

" Vim-Javascript
let g:vim_javascript_json_plugin = 'json'
let g:vim_javascript_warnings = 0

" Syntax
autocmd FileType json setlocal expandtab tabstop=2 shiftwidth=2
autocmd FileType javascript setlocal expandtab tabstop=2 shiftwidth=2
autocmd FileType markdown setlocal spell spelllang=en_us
set nocompatible              " use Vim settings, not Vi
set number                    " show line numbers
set tabstop=4                 " set tabstop to 4 spaces
set shiftwidth=4              " set shiftwidth to 4 spaces
set softtabstop=4             " set softtabstop to 4 spaces
set expandtab                 " use spaces instead of tabs
set autoindent                " automatically indent new lines
set hlsearch                  " highlight search results
set incsearch                 " show search matches as you type
set ignorecase                " ignore case in searches
set smartcase                 " override ignorecase if search includes uppercase
set laststatus=2              " show status line
set wildmenu                  " show list of completions in command line
set mouse=a                   " enable mouse support
set clipboard=unnamedplus     " use system clipboard
set backspace=indent,eol,start  " make backspace work as expected
syntax on                     " enable syntax highlighting

" Plugin Manager
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" Plugins
call plug#begin('~/.vim/plugged')

Plug 'tpope/vim-fugitive'
Plug 'scrooloose/nerdtree'
Plug 'jiangmiao/auto-pairs'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'pangloss/vim-javascript'
Plug 'plasticboy/vim-markdown'
Plug 'preservim/nerdcommenter'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'

call plug#end()

" Key Mappings
" NERDTree
map <C-n> :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" Fugitive
map <leader>gs :Git<CR>
map <leader>gd :Gvdiffsplit<CR>
map <leader>gc :Git commit -v<CR>

" NERDCommenter
map <leader>c <Plug>NERDCommenterToggle

" Auto Pairs
let g:AutoPairsMapCR = 0
let g:AutoPairsFlyMode = 1
let g:AutoPairsShortcutToggle = '<C-h>'

" Markdown
let g:vim_markdown_folding_disabled = 1

" Airline
let g:airline_theme='dracula'
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#show_tab_count = 1

" Javascript
let g:javascript_enable_domhtmlcss = 1
let g:javascript_plugin_jsdoc = 1

" Vim-Javascript
let g:vim_javascript_json_plugin = 'json'
let g:vim_javascript_warnings = 0

" Syntax
autocmd FileType json setlocal expandtab tabstop=2 shiftwidth=2
autocmd FileType javascript setlocal expandtab tabstop=2 shiftwidth=2
autocmd FileType markdown setlocal spell spelllang=en_us
set nocompatible              " use Vim settings, not Vi
set number                    " show line numbers
set tabstop=4                 " set tabstop to 4 spaces
set shiftwidth=4              " set shiftwidth to 4 spaces
set softtabstop=4             " set softtabstop to 4 spaces
set expandtab                 " use spaces instead of tabs
set autoindent                " automatically indent new lines
set hlsearch                  " highlight search results
set incsearch                 " show search matches as you type
set ignorecase                " ignore case in searches
set smartcase                 " override ignorecase if search includes uppercase
set laststatus=2              " show status line
set wildmenu                  " show list of completions in command line
set mouse=a                   " enable mouse support
set clipboard=unnamedplus     " use system clipboard
set backspace=indent,eol,start  " make backspace work as expected
syntax on                     " enable syntax highlighting

" Plugin Manager
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" Plugins
call plug#begin('~/.vim/plugged')

Plug 'tpope/vim-fugitive'
Plug 'scrooloose/nerdtree'
Plug 'jiangmiao/auto-pairs'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'pangloss/vim-javascript'
Plug 'plasticboy/vim-markdown'
Plug 'preservim/nerdcommenter'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'

call plug#end()

" Key Mappings
" NERDTree
map <C-n> :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" Fugitive
map <leader>gs :Git<CR>
map <leader>gd :Gvdiffsplit<CR>
map <leader>gc :Git commit -v<CR>

" NERDCommenter
map <leader>c <Plug>NERDCommenterToggle

" Auto Pairs
let g:AutoPairsMapCR = 0
let g:AutoPairsFlyMode = 1
let g:AutoPairsShortcutToggle = '<C-h>'

" Markdown
let g:vim_markdown_folding_disabled = 1

" Airline
let g:airline_theme='dracula'
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#show_tab_count = 1

" Javascript
let g:javascript_enable_domhtmlcss = 1
let g:javascript_plugin_jsdoc = 1

" Vim-Javascript
let g:vim_javascript_json_plugin = 'json'
let g:vim_javascript_warnings = 0

" Syntax
autocmd FileType json setlocal expandtab tabstop=2 shiftwidth=2
autocmd FileType javascript setlocal expandtab tabstop=2 shiftwidth=2
autocmd FileType markdown setlocal spell spelllang=en_us
set nocompatible              " use Vim settings, not Vi
set number                    " show line numbers
set tabstop=4                 " set tabstop to 4 spaces
set shiftwidth=4              " set shiftwidth to 4 spaces
set softtabstop=4             " set softtabstop to 4 spaces
set expandtab                 " use spaces instead of tabs
set autoindent                " automatically indent new lines
set hlsearch                  " highlight search results
set incsearch                 " show search matches as you type
set ignorecase                " ignore case in searches
set smartcase                 " override ignorecase if search includes uppercase
set laststatus=2              " show status line
set wildmenu                  " show list of completions in command line
set mouse=a                   " enable mouse support
set clipboard=unnamedplus     " use system clipboard
set backspace=indent,eol,start  " make backspace work as expected
syntax on                     " enable syntax highlighting

" Plugin Manager
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" Plugins
call plug#begin('~/.vim/plugged')

Plug 'tpope/vim-fugitive'
Plug 'scrooloose/nerdtree'
Plug 'jiangmiao/auto-pairs'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'pangloss/vim-javascript'
Plug 'plasticboy/vim-markdown'
Plug 'preservim/nerdcommenter'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'

call plug#end()

" Key Mappings
" NERDTree
map <C-n> :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" Fugitive
map <leader>gs :Git<CR>
map <leader>gd :Gvdiffsplit<CR>
map <leader>gc :Git commit -v<CR>

" NERDCommenter
map <leader>c <Plug>NERDCommenterToggle

" Auto Pairs
let g:AutoPairsMapCR = 0
let g:AutoPairsFlyMode = 1
let g:AutoPairsShortcutToggle = '<C-h>'

" Markdown
let g:vim_markdown_folding_disabled = 1

" Airline
let g:airline_theme='dracula'
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#show_tab_count = 1

" Javascript
let g:javascript_enable_domhtmlcss = 1
let g:javascript_plugin_jsdoc = 1

" Vim-Javascript
let g:vim_javascript_json_plugin = 'json'
let g:vim_javascript_warnings = 0

" Syntax
autocmd FileType json setlocal expandtab tabstop=2 shiftwidth=2
autocmd FileType javascript setlocal expandtab tabstop=2 shiftwidth=2
autocmd FileType markdown setlocal spell spelllang=en_us
set nocompatible              " use Vim settings, not Vi
set number                    " show line numbers
set tabstop=4                 " set tabstop to 4 spaces
set shiftwidth=4              " set shiftwidth to 4 spaces
set softtabstop=4             " set softtabstop to 4 spaces
set expandtab                 " use spaces instead of tabs
set autoindent                " automatically indent new lines
set hlsearch                  " highlight search results
set incsearch                 " show search matches as you type
set ignorecase                " ignore case in searches
set smartcase                 " override ignorecase if search includes uppercase
set laststatus=2              " show status line
set wildmenu                  " show list of completions in command line
set mouse=a                   " enable mouse support
set clipboard=unnamedplus     " use system clipboard
set backspace=indent,eol,start  " make backspace work as expected
syntax on                     " enable syntax highlighting

" Plugin Manager
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" Plugins
call plug#begin('~/.vim/plugged')

Plug 'tpope/vim-fugitive'
Plug 'scrooloose/nerdtree'
Plug 'jiangmiao/auto-pairs'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'pangloss/vim-javascript'
Plug 'plasticboy/vim-markdown'
Plug 'preservim/nerdcommenter'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'

call plug#end()

" Key Mappings
" NERDTree
map <C-n> :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" Fugitive
map <leader>gs :Git<CR>
map <leader>gd :Gvdiffsplit<CR>
map <leader>gc :Git commit -v<CR>

" NERDCommenter
map <leader>c <Plug>NERDCommenterToggle

" Auto Pairs
let g:AutoPairsMapCR = 0
let g:AutoPairsFlyMode = 1
let g:AutoPairsShortcutToggle = '<C-h>'

" Markdown
let g:vim_markdown_folding_disabled = 1

" Airline
let g:airline_theme='dracula'
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#show_tab_count = 1

" Javascript
let g:javascript_enable_domhtmlcss = 1
let g:javascript_plugin_jsdoc = 1

" Vim-Javascript
let g:vim_javascript_json_plugin = 'json'
let g:vim_javascript_warnings = 0

" Syntax
autocmd FileType json setlocal expandtab tabstop=2 shiftwidth=2
autocmd FileType javascript setlocal expandtab tabstop=2 shiftwidth=2
autocmd FileType markdown setlocal spell spelllang=en_us
set nocompatible              " use Vim settings, not Vi
set number                    " show line numbers
set tabstop=4                 " set tabstop to 4 spaces
set shiftwidth=4              " set shiftwidth to 4 spaces
set softtabstop=4             " set softtabstop to 4 spaces
set expandtab                 " use spaces instead of tabs
set autoindent                " automatically indent new lines
set hlsearch                  " highlight search results
set incsearch                 " show search matches as you type
set ignorecase                " ignore case in searches
set smartcase                 " override ignorecase if search includes uppercase
set laststatus=2              " show status line
set wildmenu                  " show list of completions in command line
set mouse=a                   " enable mouse support
set clipboard=unnamedplus     " use system clipboard
set backspace=indent,eol,start  " make backspace work as expected
syntax on                     " enable syntax highlighting

" Plugin Manager
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" Plugins
call plug#begin('~/.vim/plugged')

Plug 'tpope/vim-fugitive'
Plug 'scrooloose/nerdtree'
Plug 'jiangmiao/auto-pairs'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'pangloss/vim-javascript'
Plug 'plasticboy/vim-markdown'
Plug 'preservim/nerdcommenter'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'

call plug#end()

" Key Mappings
" NERDTree
map <C-n> :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" Fugitive
map <leader>gs :Git<CR>
map <leader>gd :Gvdiffsplit<CR>
map <leader>gc :Git commit -v<CR>

" NERDCommenter
map <leader>c <Plug>NERDCommenterToggle

" Auto Pairs
let g:AutoPairsMapCR = 0
let g:AutoPairsFlyMode = 1
let g:AutoPairsShortcutToggle = '<C-h>'

" Markdown
let g:vim_markdown_folding_disabled = 1

" Airline
let g:airline_theme='dracula'
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#show_tab_count = 1

" Javascript
let g:javascript_enable_domhtmlcss = 1
let g:javascript_plugin_jsdoc = 1

" Vim-Javascript
let g:vim_javascript_json_plugin = 'json'
let g:vim_javascript_warnings = 0

" Syntax
autocmd FileType json setlocal expandtab tabstop=2 shiftwidth=2
autocmd FileType javascript setlocal expandtab tabstop=2 shiftwidth=2
autocmd FileType markdown setlocal spell spelllang=en_us
set nocompatible              " use Vim settings, not Vi
set number                    " show line numbers
set tabstop=4                 " set tabstop to 4 spaces
set shiftwidth=4              " set shiftwidth to 4 spaces
set softtabstop=4             " set softtabstop to 4 spaces
set expandtab                 " use spaces instead of tabs
set autoindent                " automatically indent new lines
set hlsearch                  " highlight search results
set incsearch                 " show search matches as you type
set ignorecase                " ignore case in searches
set smartcase                 " override ignorecase if search includes uppercase
set laststatus=2              " show status line
set wildmenu                  " show list of completions in command line
set mouse=a                   " enable mouse support
set clipboard=unnamedplus     " use system clipboard
set backspace=indent,eol,start  " make backspace work as expected
syntax on                     " enable syntax highlighting

" Plugin Manager
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" Plugins
call plug#begin('~/.vim/plugged')

Plug 'tpope/vim-fugitive'
Plug 'scrooloose/nerdtree'
Plug 'jiangmiao/auto-pairs'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'pangloss/vim-javascript'
Plug 'plasticboy/vim-markdown'
Plug 'preservim/nerdcommenter'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'

call plug#end()

" Key Mappings
" NERDTree
map <C-n> :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" Fugitive
map <leader>gs :Git<CR>
map <leader>gd :Gvdiffsplit<CR>
map <leader>gc :Git commit -v<CR>

" NERDCommenter
map <leader>c <Plug>NERDCommenterToggle

" Auto Pairs
let g:AutoPairsMapCR = 0
let g:AutoPairsFlyMode = 1
let g:AutoPairsShortcutToggle = '<C-h>'

" Markdown
let g:vim_markdown_folding_disabled = 1

" Airline
let g:airline_theme='dracula'
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#show_tab_count = 1

" Javascript
let g:javascript_enable_domhtmlcss = 1
let g:javascript_plugin_jsdoc = 1

" Vim-Javascript
let g:vim_javascript_json_plugin = 'json'
let g:vim_javascript_warnings = 0

" Syntax
autocmd FileType json setlocal expandtab tabstop=2 shiftwidth=2
autocmd FileType javascript setlocal expandtab tabstop=2 shiftwidth=2
autocmd FileType markdown setlocal spell spelllang=en_us
set nocompatible              " use Vim settings, not Vi
set number                    " show line numbers
set tabstop=4                 " set tabstop to 4 spaces
set shiftwidth=4              " set shiftwidth to 4 spaces
set softtabstop=4             " set softtabstop to 4 spaces
set expandtab                 " use spaces instead of tabs
set autoindent                " automatically indent new lines
set hlsearch                  " highlight search results
set incsearch                 " show search matches as you type
set ignorecase                " ignore case in searches
set smartcase                 " override ignorecase if search includes uppercase
set laststatus=2              " show status line
set wildmenu                  " show list of completions in command line
set mouse=a                   " enable mouse support
set clipboard=unnamedplus     " use system clipboard
set backspace=indent,eol,start  " make backspace work as expected
syntax on                     " enable syntax highlighting

" Plugin Manager
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" Plugins
call plug#begin('~/.vim/plugged')

Plug 'tpope/vim-fugitive'
Plug 'scrooloose/nerdtree'
Plug 'jiangmiao/auto-pairs'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'pangloss/vim-javascript'
Plug 'plasticboy/vim-markdown'
Plug 'preservim/nerdcommenter'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'

call plug#end()

" Key Mappings
" NERDTree
map <C-n> :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" Fugitive
map <leader>gs :Git<CR>
map <leader>gd :Gvdiffsplit<CR>
map <leader>gc :Git commit -v<CR>

" NERDCommenter
map <leader>c <Plug>NERDCommenterToggle

" Auto Pairs
let g:AutoPairsMapCR = 0
let g:AutoPairsFlyMode = 1
let g:AutoPairsShortcutToggle = '<C-h>'

" Markdown
let g:vim_markdown_folding_disabled = 1

" Airline
let g:airline_theme='dracula'
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#show_tab_count = 1

" Javascript
let g:javascript_enable_domhtmlcss = 1
let g:javascript_plugin_jsdoc = 1

" Vim-Javascript
let g:vim_javascript_json_plugin = 'json'
let g:vim_javascript_warnings = 0

" Syntax
autocmd FileType json setlocal expandtab tabstop=2 shiftwidth=2
autocmd FileType javascript setlocal expandtab tabstop=2 shiftwidth=2
autocmd FileType markdown setlocal spell spelllang=en_us
set nocompatible              " use Vim settings, not Vi
set number                    " show line numbers
set tabstop=4                 " set tabstop to 4 spaces
set shiftwidth=4              " set shiftwidth to 4 spaces
set softtabstop=4             " set softtabstop to 4 spaces
set expandtab                 " use spaces instead of tabs
set autoindent                " automatically indent new lines
set hlsearch                  " highlight search results
set incsearch                 " show search matches as you type
set ignorecase                " ignore case in searches
set smartcase                 " override ignorecase if search includes uppercase
set laststatus=2              " show status line
set wildmenu                  " show list of completions in command line
set mouse=a                   " enable mouse support
set clipboard=unnamedplus     " use system clipboard
set backspace=indent,eol,start  " make backspace work as expected
syntax on                     " enable syntax highlighting

" Plugin Manager
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" Plugins
call plug#begin('~/.vim/plugged')

Plug 'tpope/vim-fugitive'
Plug 'scrooloose/nerdtree'
Plug 'jiangmiao/auto-pairs'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'pangloss/vim-javascript'
Plug 'plasticboy/vim-markdown'
Plug 'preservim/nerdcommenter'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'

call plug#end()

" Key Mappings
" NERDTree
map <C-n> :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" Fugitive
map <leader>gs :Git<CR>
map <leader>gd :Gvdiffsplit<CR>
map <leader>gc :Git commit -v<CR>

" NERDCommenter
map <leader>c <Plug>NERDCommenterToggle

" Auto Pairs
let g:AutoPairsMapCR = 0
let g:AutoPairsFlyMode = 1
let g:AutoPairsShortcutToggle = '<C-h>'

" Markdown
let g:vim_markdown_folding_disabled = 1

" Airline
let g:airline_theme='dracula'
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#show_tab_count = 1

" Javascript
let g:javascript_enable_domhtmlcss = 1
let g:javascript_plugin_jsdoc = 1

" Vim-Javascript
let g:vim_javascript_json_plugin = 'json'
let g:vim_javascript_warnings = 0

" Syntax
autocmd FileType json setlocal expandtab tabstop=2 shiftwidth=2
autocmd FileType javascript setlocal expandtab tabstop=2 shiftwidth=2
autocmd FileType markdown setlocal spell spelllang=en_us
set nocompatible              " use Vim settings, not Vi
set number                    " show line numbers
set tabstop=4                 " set tabstop to 4 spaces
set shiftwidth=4              " set shiftwidth to 4 spaces
set softtabstop=4             " set softtabstop to 4 spaces
set expandtab                 " use spaces instead of tabs
set autoindent                " automatically indent new lines
set hlsearch                  " highlight search results
set incsearch                 " show search matches as you type
set ignorecase                " ignore case in searches
set smartcase                 " override ignorecase if search includes uppercase
set laststatus=2              " show status line
set wildmenu                  " show list of completions in command line
set mouse=a                   " enable mouse support
set clipboard=unnamedplus     " use system clipboard
set backspace=indent,eol,start  " make backspace work as expected
syntax on                     " enable syntax highlighting

" Plugin Manager
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" Plugins
call plug#begin('~/.vim/plugged')

Plug 'tpope/vim-fugitive'
Plug 'scrooloose/nerdtree'
Plug 'jiangmiao/auto-pairs'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'pangloss/vim-javascript'
Plug 'plasticboy/vim-markdown'
Plug 'preservim/nerdcommenter'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'

call plug#end()

" Key Mappings
" NERDTree
map <C-n> :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" Fugitive
map <leader>gs :Git<CR>
map <leader>gd :Gvdiffsplit<CR>
map <leader>gc :Git commit -v<CR>

" NERDCommenter
map <leader>c <Plug>NERDCommenterToggle

" Auto Pairs
let g:AutoPairsMapCR = 0
let g:AutoPairsFlyMode = 1
let g:AutoPairsShortcutToggle = '<C-h>'

" Markdown
let g:vim_markdown_folding_disabled = 1

" Airline
let g:airline_theme='dracula'
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#show_tab_count = 1

" Javascript
let g:javascript_enable_domhtmlcss = 1
let g:javascript_plugin_jsdoc = 1

" Vim-Javascript
let g:vim_javascript_json_plugin = 'json'
let g:vim_javascript_warnings = 0

" Syntax
autocmd FileType json setlocal expandtab tabstop=2 shiftwidth=2
autocmd FileType javascript setlocal expandtab tabstop=2 shiftwidth=2
autocmd FileType markdown setlocal spell spelllang=en_us
set nocompatible              " use Vim settings, not Vi
set number                    " show line numbers
set tabstop=4                 " set tabstop to 4 spaces
set shiftwidth=4              " set shiftwidth to 4 spaces
set softtabstop=4             " set softtabstop to 4 spaces
set expandtab                 " use spaces instead of tabs
set autoindent                " automatically indent new lines
set hlsearch                  " highlight search results
set incsearch                 " show search matches as you type
set ignorecase                " ignore case in searches
set smartcase                 " override ignorecase if search includes uppercase
set laststatus=2              " show status line
set wildmenu                  " show list of completions in command line
set mouse=a                   " enable mouse support
set clipboard=unnamedplus     " use system clipboard
set backspace=indent,eol,start  " make backspace work as expected
syntax on                     " enable syntax highlighting

" Plugin Manager
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" Plugins
call plug#begin('~/.vim/plugged')

Plug 'tpope/vim-fugitive'
Plug 'scrooloose/nerdtree'
Plug 'jiangmiao/auto-pairs'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'pangloss/vim-javascript'
Plug 'plasticboy/vim-markdown'
Plug 'preservim/nerdcommenter'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'

call plug#end()

" Key Mappings
" NERDTree
map <C-n> :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" Fugitive
map <leader>gs :Git<CR>
map <leader>gd :Gvdiffsplit<CR>
map <leader>gc :Git commit -v<CR>

" NERDCommenter
map <leader>c <Plug>NERDCommenterToggle

" Auto Pairs
let g:AutoPairsMapCR = 0
let g:AutoPairsFlyMode = 1
let g:AutoPairsShortcutToggle = '<C-h>'

" Markdown
let g:vim_markdown_folding_disabled = 1

" Airline
let g:airline_theme='dracula'
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#show_tab_count = 1

" Javascript
let g:javascript_enable_domhtmlcss = 1
let g:javascript_plugin_jsdoc = 1

" Vim-Javascript
let g:vim_javascript_json_plugin = 'json'
let g:vim_javascript_warnings = 0

" Syntax
autocmd FileType json setlocal expandtab tabstop=2 shiftwidth=2
autocmd FileType javascript setlocal expandtab tabstop=2 shiftwidth=2
autocmd FileType markdown setlocal spell spelllang=en_us
set nocompatible              " use Vim settings, not Vi
set number                    " show line numbers
set tabstop=4                 " set tabstop to 4 spaces
set shiftwidth=4              " set shiftwidth to 4 spaces
set softtabstop=4             " set softtabstop to 4 spaces
set expandtab                 " use spaces instead of tabs
set autoindent                " automatically indent new lines
set hlsearch                  " highlight search results
set incsearch                 " show search matches as you type
set ignorecase                " ignore case in searches
set smartcase                 " override ignorecase if search includes uppercase
set laststatus=2              " show status line
set wildmenu                  " show list of completions in command line
set mouse=a                   " enable mouse support
set clipboard=unnamedplus     " use system clipboard
set backspace=indent,eol,start  " make backspace work as expected
syntax on                     " enable syntax highlighting

" Plugin Manager
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" Plugins
call plug#begin('~/.vim/plugged')

Plug 'tpope/vim-fugitive'
Plug 'scrooloose/nerdtree'
Plug 'jiangmiao/auto-pairs'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'pangloss/vim-javascript'
Plug 'plasticboy/vim-markdown'
Plug 'preservim/nerdcommenter'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'

call plug#end()

" Key Mappings
" NERDTree
map <C-n> :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" Fugitive
map <leader>gs :Git<CR>
map <leader>gd :Gvdiffsplit<CR>
map <leader>gc :Git commit -v<CR>

" NERDCommenter
map <leader>c <Plug>NERDCommenterToggle

" Auto Pairs
let g:AutoPairsMapCR = 0
let g:AutoPairsFlyMode = 1
let g:AutoPairsShortcutToggle = '<C-h>'

" Markdown
let g:vim_markdown_folding_disabled = 1

" Airline
let g:airline_theme='dracula'
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#show_tab_count = 1

" Javascript
let g:javascript_enable_domhtmlcss = 1
let g:javascript_plugin_jsdoc = 1

" Vim-Javascript
let g:vim_javascript_json_plugin = 'json'
let g:vim_javascript_warnings = 0

" Syntax
autocmd FileType json setlocal expandtab tabstop=2 shiftwidth=2
autocmd FileType javascript setlocal expandtab tabstop=2 shiftwidth=2
autocmd FileType markdown setlocal spell spelllang=en_us
set nocompatible              " use Vim settings, not Vi
set number                    " show line numbers
set tabstop=4                 " set tabstop to 4 spaces
set shiftwidth=4              " set shiftwidth to 4 spaces
set softtabstop=4             " set softtabstop to 4 spaces
set expandtab                 " use spaces instead of tabs
set autoindent                " automatically indent new lines
set hlsearch                  " highlight search results
set incsearch                 " show search matches as you type
set ignorecase                " ignore case in searches
set smartcase                 " override ignorecase if search includes uppercase
set laststatus=2              " show status line
set wildmenu                  " show list of completions in command line
set mouse=a                   " enable mouse support
set clipboard=unnamedplus     " use system clipboard
set backspace=indent,eol,start  " make backspace work as expected
syntax on                     " enable syntax highlighting

" Plugin Manager
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" Plugins
call plug#begin('~/.vim/plugged')

Plug 'tpope/vim-fugitive'
Plug 'scrooloose/nerdtree'
Plug 'jiangmiao/auto-pairs'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'pangloss/vim-javascript'
Plug 'plasticboy/vim-markdown'
Plug 'preservim/nerdcommenter'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'

call plug#end()

" Key Mappings
" NERDTree
map <C-n> :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" Fugitive
map <leader>gs :Git<CR>
map <leader>gd :Gvdiffsplit<CR>
map <leader>gc :Git commit -v<CR>

" NERDCommenter
map <leader>c <Plug>NERDCommenterToggle

" Auto Pairs
let g:AutoPairsMapCR = 0
let g:AutoPairsFlyMode = 1
let g:AutoPairsShortcutToggle = '<C-h>'

" Markdown
let g:vim_markdown_folding_disabled = 1

" Airline
let g:airline_theme='dracula'
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#show_tab_count = 1

" Javascript
let g:javascript_enable_domhtmlcss = 1
let g:javascript_plugin_jsdoc = 1

" Vim-Javascript
let g:vim_javascript_json_plugin = 'json'
let g:vim_javascript_warnings = 0

" Syntax
autocmd FileType json setlocal expandtab tabstop=2 shiftwidth=2
autocmd FileType javascript setlocal expandtab tabstop=2 shiftwidth=2
autocmd FileType markdown setlocal spell spelllang=en_us
set nocompatible              " use Vim settings, not Vi
set number                    " show line numbers
set tabstop=4                 " set tabstop to 4 spaces
set shiftwidth=4              " set shiftwidth to 4 spaces
set softtabstop=4             " set softtabstop to 4 spaces
set expandtab                 " use spaces instead of tabs
set autoindent                " automatically indent new lines
set hlsearch                  " highlight search results
set incsearch                 " show search matches as you type
set ignorecase                " ignore case in searches
set smartcase                 " override ignorecase if search includes uppercase
set laststatus=2              " show status line
set wildmenu                  " show list of completions in command line
set mouse=a                   " enable mouse support
set clipboard=unnamedplus     " use system clipboard
set backspace=indent,eol,start  " make backspace work as expected
syntax on                     " enable syntax highlighting

" Plugin Manager
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" Plugins
call plug#begin('~/.vim/plugged')

Plug 'tpope/vim-fugitive'
Plug 'scrooloose/nerdtree'
Plug 'jiangmiao/auto-pairs'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'pangloss/vim-javascript'
Plug 'plasticboy/vim-markdown'
Plug 'preservim/nerdcommenter'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'

call plug#end()

" Key Mappings
" NERDTree
map <C-n> :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" Fugitive
map <leader>gs :Git<CR>
map <leader>gd :Gvdiffsplit<CR>
map <leader>gc :Git commit -v<CR>

" NERDCommenter
map <leader>c <Plug>NERDCommenterToggle

" Auto Pairs
let g:AutoPairsMapCR = 0
let g:AutoPairsFlyMode = 1
let g:AutoPairsShortcutToggle = '<C-h>'

" Markdown
let g:vim_markdown_folding_disabled = 1

" Airline
let g:airline_theme='dracula'
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#show_tab_count = 1

" Javascript
let g:javascript_enable_domhtmlcss = 1
let g:javascript_plugin_jsdoc = 1

" Vim-Javascript
let g:vim_javascript_json_plugin = 'json'
let g:vim_javascript_warnings = 0

" Syntax
autocmd FileType json setlocal expandtab tabstop=2 shiftwidth=2
autocmd FileType javascript setlocal expandtab tabstop=2 shiftwidth=2
autocmd FileType markdown setlocal spell spelllang=en_us
set nocompatible              " use Vim settings, not Vi
set number                    " show line numbers
set tabstop=4                 " set tabstop to 4 spaces
set shiftwidth=4              " set shiftwidth to 4 spaces
set softtabstop=4             " set softtabstop to 4 spaces
set expandtab                 " use spaces instead of tabs
set autoindent                " automatically indent new lines
set hlsearch                  " highlight search results
set incsearch                 " show search matches as you type
set ignorecase                " ignore case in searches
set smartcase                 " override ignorecase if search includes uppercase
set laststatus=2              " show status line
set wildmenu                  " show list of completions in command line
set mouse=a                   " enable mouse support
set clipboard=unnamedplus     " use system clipboard
set backspace=indent,eol,start  " make backspace work as expected
syntax on                     " enable syntax highlighting

" Plugin Manager
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" Plugins
call plug#begin('~/.vim/plugged')

Plug 'tpope/vim-fugitive'
Plug 'scrooloose/nerdtree'
Plug 'jiangmiao/auto-pairs'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'pangloss/vim-javascript'
Plug 'plasticboy/vim-markdown'
Plug 'preservim/nerdcommenter'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'

call plug#end()

" Key Mappings
" NERDTree
map <C-n> :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" Fugitive
map <leader>gs :Git<CR>
map <leader>gd :Gvdiffsplit<CR>
map <leader>gc :Git commit -v<CR>

" NERDCommenter
map <leader>c <Plug>NERDCommenterToggle

" Auto Pairs
let g:AutoPairsMapCR = 0
let g:AutoPairsFlyMode = 1
let g:AutoPairsShortcutToggle = '<C-h>'

" Markdown
let g:vim_markdown_folding_disabled = 1

" Airline
let g:airline_theme='dracula'
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#show_tab_count = 1

" Javascript
let g:javascript_enable_domhtmlcss = 1
let g:javascript_plugin_jsdoc = 1

" Vim-Javascript
let g:vim_javascript_json_plugin = 'json'
let g:vim_javascript_warnings = 0

" Syntax
autocmd FileType json setlocal expandtab tabstop=2 shiftwidth=2
autocmd FileType javascript setlocal expandtab tabstop=2 shiftwidth=2
autocmd FileType markdown setlocal spell spelllang=en_us
set nocompatible              " use Vim settings, not Vi
set number                    " show line numbers
set tabstop=4                 " set tabstop to 4 spaces
set shiftwidth=4              " set shiftwidth to 4 spaces
set softtabstop=4             " set softtabstop to 4 spaces
set expandtab                 " use spaces instead of tabs
set autoindent                " automatically indent new lines
set hlsearch                  " highlight search results
set incsearch                 " show search matches as you type
set ignorecase                " ignore case in searches
set smartcase                 " override ignorecase if search includes uppercase
set laststatus=2              " show status line
set wildmenu                  " show list of completions in command line
set mouse=a                   " enable mouse support
set clipboard=unnamedplus     " use system clipboard
set backspace=indent,eol,start  " make backspace work as expected
syntax on                     " enable syntax highlighting

" Plugin Manager
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" Plugins
call plug#begin('~/.vim/plugged')

Plug 'tpope/vim-fugitive'
Plug 'scrooloose/nerdtree'
Plug 'jiangmiao/auto-pairs'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'pangloss/vim-javascript'
Plug 'plasticboy/vim-markdown'
Plug 'preservim/nerdcommenter'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'

call plug#end()

" Key Mappings
" NERDTree
map <C-n> :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" Fugitive
map <leader>gs :Git<CR>
map <leader>gd :Gvdiffsplit<CR>
map <leader>gc :Git commit -v<CR>

" NERDCommenter
map <leader>c <Plug>NERDCommenterToggle

" Auto Pairs
let g:AutoPairsMapCR = 0
let g:AutoPairsFlyMode = 1
let g:AutoPairsShortcutToggle = '<C-h>'

" Markdown
let g:vim_markdown_folding_disabled = 1

" Airline
let g:airline_theme='dracula'
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#show_tab_count = 1

" Javascript
let g:javascript_enable_domhtmlcss = 1
let g:javascript_plugin_jsdoc = 1

" Vim-Javascript
let g:vim_javascript_json_plugin = 'json'
let g:vim_javascript_warnings = 0

" Syntax
autocmd FileType json setlocal expandtab tabstop=2 shiftwidth=2
autocmd FileType javascript setlocal expandtab tabstop=2 shiftwidth=2
autocmd FileType markdown setlocal spell spelllang=en_us
set nocompatible              " use Vim settings, not Vi
set number                    " show line numbers
set tabstop=4                 " set tabstop to 4 spaces
set shiftwidth=4              " set shiftwidth to 4 spaces
set softtabstop=4             " set softtabstop to 4 spaces
set expandtab                 " use spaces instead of tabs
set autoindent                " automatically indent new lines
set hlsearch                  " highlight search results
set incsearch                 " show search matches as you type
set ignorecase                " ignore case in searches
set smartcase                 " override ignorecase if search includes uppercase
set laststatus=2              " show status line
set wildmenu                  " show list of completions in command line
set mouse=a                   " enable mouse support
set clipboard=unnamedplus     " use system clipboard
set backspace=indent,eol,start  " make backspace work as expected
syntax on                     " enable syntax highlighting

" Plugin Manager
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" Plugins
call plug#begin('~/.vim/plugged')

Plug 'tpope/vim-fugitive'
Plug 'scrooloose/nerdtree'
Plug 'jiangmiao/auto-pairs'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'pangloss/vim-javascript'
Plug 'plasticboy/vim-markdown'
Plug 'preservim/nerdcommenter'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'

call plug#end()

" Key Mappings
" NERDTree
map <C-n> :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" Fugitive
map <leader>gs :Git<CR>
map <leader>gd :Gvdiffsplit<CR>
map <leader>gc :Git commit -v<CR>

" NERDCommenter
map <leader>c <Plug>NERDCommenterToggle

" Auto Pairs
let g:AutoPairsMapCR = 0
let g:AutoPairsFlyMode = 1
let g:AutoPairsShortcutToggle = '<C-h>'

" Markdown
let g:vim_markdown_folding_disabled = 1

" Airline
let g:airline_theme='dracula'
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#show_tab_count = 1

" Javascript
let g:javascript_enable_domhtmlcss = 1
let g:javascript_plugin_jsdoc = 1

" Vim-Javascript
let g:vim_javascript_json_plugin = 'json'
let g:vim_javascript_warnings = 0

" Syntax
autocmd FileType json setlocal expandtab tabstop=2 shiftwidth=2
autocmd FileType javascript setlocal expandtab tabstop=2 shiftwidth=2
autocmd FileType markdown setlocal spell spelllang=en_us
set nocompatible              " use Vim settings, not Vi
set number                    " show line numbers
set tabstop=4                 " set tabstop to 4 spaces
set shiftwidth=4              " set shiftwidth to 4 spaces
set softtabstop=4             " set softtabstop to 4 spaces
set expandtab                 " use spaces instead of tabs
set autoindent                " automatically indent new lines
set hlsearch                  " highlight search results
set incsearch                 " show search matches as you type
set ignorecase                " ignore case in searches
set smartcase                 " override ignorecase if search includes uppercase
set laststatus=2              " show status line
set wildmenu                  " show list of completions in command line
set mouse=a                   " enable mouse support
set clipboard=unnamedplus     " use system clipboard
set backspace=indent,eol,start  " make backspace work as expected
syntax on                     " enable syntax highlighting

" Plugin Manager
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" Plugins
call plug#begin('~/.vim/plugged')

Plug 'tpope/vim-fugitive'
Plug 'scrooloose/nerdtree'
Plug 'jiangmiao/auto-pairs'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'pangloss/vim-javascript'
Plug 'plasticboy/vim-markdown'
Plug 'preservim/nerdcommenter'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'

call plug#end()

" Key Mappings
" NERDTree
map <C-n> :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" Fugitive
map <leader>gs :Git<CR>
map <leader>gd :Gvdiffsplit<CR>
map <leader>gc :Git commit -v<CR>

" NERDCommenter
map <leader>c <Plug>NERDCommenterToggle

" Auto Pairs
let g:AutoPairsMapCR = 0
let g:AutoPairsFlyMode = 1
let g:AutoPairsShortcutToggle = '<C-h>'

" Markdown
let g:vim_markdown_folding_disabled = 1

" Airline
let g:airline_theme='dracula'
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#show_tab_count = 1

" Javascript
let g:javascript_enable_domhtmlcss = 1
let g:javascript_plugin_jsdoc = 1

" Vim-Javascript
let g:vim_javascript_json_plugin = 'json'
let g:vim_javascript_warnings = 0

" Syntax
autocmd FileType json setlocal expandtab tabstop=2 shiftwidth=2
autocmd FileType javascript setlocal expandtab tabstop=2 shiftwidth=2
autocmd FileType markdown setlocal spell spelllang=en_us
```
