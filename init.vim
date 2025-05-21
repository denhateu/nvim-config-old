set encoding=utf-8
set mouse=a
set cursorline
set scrolloff=7

" Табы
set tabstop=3
set softtabstop=3
set shiftwidth=3

" Использование пробелов вместо табов
set expandtab
set smartindent

" Поиск
set hlsearch
set ruler

" Использование системного буфера обмена вместо вимовского
set clipboard=unnamedplus

" Отключение создания бэкапов
set nobackup
set noswapfile

" Плагины
" Путь к файлу vim-plug для Neovim 5: C:\Users\Danil Aksenow\AppData\Local\nvim-data\site\autoload\plug.vim
" Для работы vim-plug необходимо в init.vim добавить 'call plug#begin()' и 'call plug#end()'
call plug#begin()

Plug 'morhetz/gruvbox'
Plug 'preservim/nerdtree'

call plug#end()

" Настройки gruvbox
let g:gruvbox_bold = 0
let g:gruvbox_italic = 0

" Темная тема по умолчанию
colorscheme gruvbox
set bg=dark
syntax on

set number
augroup numbertoggle
  autocmd!
  autocmd BufEnter,FocusGained,InsertLeave * set rnu
  autocmd BufLeave,FocusLost,InsertEnter * set nornu
augroup END

" Сочетания клавиш
let mapleader = ','

imap kj <ESC>

" NERDTree
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <leader>nt :NERDTreeToggle<CR>

" Выход из вима если открыт последний буфер и в нем открыт NERDTree
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif
