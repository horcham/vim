syntax enable
set nu

set nocompatible    " be iMproved
filetype off        " 文件类型检测,Vundle时要关闭
filetype plugin on " 检测文件类型插件
set backspace=indent,eol,start

set autowrite "自动保存
set ruler "显示标尺
set showcmd " 输入的命令显示出来，看的清楚些  
"set cursorline "行高亮
set completeopt=longest,menu "打开文件类型检测, 可以用智能补全
set magic "设置魔术


"符号自动补全
:inoremap ( ()<ESC>i
:inoremap ) <c-r>=ClosePair(')')<CR>
:inoremap { {}<ESC>i
:inoremap } <c-r>=ClosePair('}')<CR>
:inoremap [ []<ESC>i
:inoremap ] <c-r>=ClosePair(']')<CR>
:inoremap " ""<ESC>i
:inoremap ' ''<ESC>i
function! ClosePair(char)
    if getline(' ')[col(' ') - 1] == a:char
        return "\<Right>"
    else
        return a:char
    endif
endfunction

:nmap // 0i#<ESC>
:nmap ?? 0x<ESC>
set autoindent
set expandtab
set list
set listchars=tab:>>,space: 
:%retab!
highlight SpecialKey cterm=bold ctermfg=black
"set tabstop=4
