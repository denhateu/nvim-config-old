set encoding=utf-8
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

call plug#end()

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
imap kj <ESC>
