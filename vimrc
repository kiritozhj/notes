runtime! debian.vim

if has("syntax")
    syntax on
endif

" Source a global configuration file if available
if filereadable("/etc/vim/vimrc.local")
    source /etc/vim/vimrc.local
endif

" 打开文件回到上次位置
if has("autocmd")
    au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif

" 启用鼠标粘贴
set mouse=c
" 开启文件类型侦测
filetype off
" 根据侦测到的不同类型加载对应的插件
filetype plugin on
" 为特定类型文件载入相关缩进文件
filetype indent on
" 关闭vi兼容模式
set nocompatible
" 设置语法高亮
syntax enable
" 高亮显示当前行
" set cursorline
" hi CursorLine term=bold cterm=bold ctermbg=white guibg=NONE guifg=NONE
" 设置行号
set number
" 设置所有的的Tab和缩进为4个空格
set tabstop=4
" 设置命令移动时的宽度为4个空格
set shiftwidth=4
" 设置缩进
set autoindent
set cindent
set smartindent
" 在倒数第二行显示状态行
set laststatus=2
" 设置搜索高亮
set hlsearch
" 关闭蜂鸣
set visualbell

"快捷键ctrl+\运行c/c++/python文件
map <C-\> :call CompileRunGcc()<CR>
func! CompileRunGcc()
        exec "w"
        if &filetype =='c'
            exec "!gcc -Wall % -o %<"
            exec "!time ./%<"
        elseif &filetype == 'cpp'
            exec "!g++ -Wall -std=c++11 % -o %<"
            exec "!time ./%<"
        elseif &filetype == 'python'
            exec "!time python3 %"
        endif
endfunc

" 插入模式下的上下左右快捷键
inoremap <C-h> <Left>
inoremap <C-j> <Down>
inoremap <C-k> <Up>
inoremap <C-l> <Right>

call plug#begin('~/.vim/plugged')
	Plug 'junegunn/seoul256.vim'
	Plug 'Raimondi/delimitMate'
	Plug 'bling/vim-airline'
call plug#end()

" 更换主题颜色
colo seoul256

" 新建c/c++文件自动插入常用头部

autocmd BufNewFile *.cpp,*.c exec ":call SetTitle()"
func SetTitle()
    if &filetype=='cpp'
        call setline(1,"#include<iostream>")
        call setline(2,"using namespace std;")
        call setline(3,"")
    elseif &filetype=='c'
        call setline(1,"#include<stdio.h>")
        call setline(2,"")
    endif
    normal G
endfunc
