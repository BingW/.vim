"""""""""""""""""""""""""""""""""""""""""""""""""""
"             below are my own setting            "
"""""""""""""""""""""""""""""""""""""""""""""""""""
"set fileencodings=utf-8,cp936,big5,euc-jp,euc-kr,latin1,ucs-bom 
set fileencodings=utf-8,gbk                    "中文支持
set ambiwidth=double                           "双引号
colo koehler                                   "配色方案
set guifont=h14:cANSI              "字体字号
set filetype=on
syntax enable                                  "
syntax on
set smartindent 
set smarttab 
set expandtab 
set tabstop=4 
set softtabstop=4 
set shiftwidth=4 
set autoindent
set backspace=2
set textwidth=79
set cindent shiftwidth=4
set showmatch
set mouse=a 
set nu
set cursorline
"Set Highlight Search
set hlsearch
set incsearch
"Auto filetype
filetype indent on
filetype plugin on
filetype plugin indent on
set completeopt=longest,menu
if has("gui_running")
    "au GUIEnter * simalt ~x  " 窗口启动时自动最大化
    "set guioptions-=m       " 隐藏菜单栏
    set guioptions-=T        " 隐藏工具栏
    "set guioptions-=L       " 隐藏左侧滚动条
    "set guioptions-=r       " 隐藏右侧滚动条
    "set guioptions-=b       " 隐藏底部滚动条
    "set showtabline=0       " 隐藏Tab栏
endif
" ######### 一键保存和编译 ######### "
" ######### 如此处没有配置你需要的编程语言，请参照示例自行配置，很简单的
 
" 编译C源文件
func! CompileGcc()
    exec "w"
    let compilecmd="!gcc -Wall -pedantic -std=c99 "
    let compileflag="-o %<"
    exec compilecmd." % ".compileflag
endfunc
 
" 编译C++源文件
func! CompileCpp()
    exec "w"
    let compilecmd="!g++ -Wall -pedantic -std=c++98 "
    let compileflag="-o %<"
    exec compilecmd." % ".compileflag
endfunc
 
" 编译Java源文件
func! CompileJava()
    exec "w"
    exec "!javac %"
endfunc
 
" 编译Haskell源文件
func! CompileHaskell()
    exec "w"
    let compilecmd="!ghc --make "
    let compileflag="-o %<"
    exec compilecmd." % ".compileflag
endfunc
 
" 运行Lua源文件
func! RunLua()
    exec "w"
    exec "!lua %"
endfunc
 
" 运行Perl源文件
func! RunPerl()
    exec "w"
    exec "!perl %"
endfunc
 
" 运行Python源文件
func! RunPython()
    exec "w"
    exec "!python %"
endfunc
 
" 运行Ruby源文件
func! RunRuby()
    exec "w"
    exec "!ruby %"
endfunc
 
 
" 根据文件类型自动选择相应的编译函数
func! CompileCode()
    exec "w"
    if &filetype == "c"
        exec "call CompileGcc()"
    elseif &filetype == "cpp"
        exec "call CompileCpp()"
    elseif &filetype == "java"
        exec "call CompileJava()"
    elseif &filetype == "haskell"
        exec "call CompileHaskell()"
    elseif &filetype == "lua"
        exec "call RunLua()"
    elseif &filetype == "perl"
        exec "call RunPerl()"
    elseif &filetype == "python"
        exec "call RunPython()"
    elseif &filetype == "ruby"
       exec "call RunRuby()"
    endif
endfunc
 
" 运行可执行文件
func! RunResult()
    exec "w"
    if &filetype == "c"
        exec "! %<"
    elseif &filetype == "cpp"
        exec "! %<"
    elseif &filetype == "java"
        exec "!java %<"
    elseif &filetype == "haskell"
        exec "! %<"
    elseif &filetype == "lua"
        exec "!lua %<.lua"
    elseif &filetype == "perl"
        exec "!perl %<.pl"
    elseif &filetype == "python"
        exec "!python %<.py"
    elseif &filetype == "ruby"
        exec "!ruby %<.rb"
    elseif &filetype == "r"
        exec "!Rscript %<.r "
    elseif &filetype == "tex"
        exec "!pdflatex %<.tex"
    endif
endfunc
 
"F4 Compile
:map <F4> :call CompileCode()<CR>
"F5 Run
:map <F5> :call RunResult()<CR>
"Pydiction
let g:pydiction_location='\Users\bingwang\.vim\ftplugin\pydiction\complete-dict'
"TagList
map <silent><F9> :TlistToggle<cr>
let Tlist_Auto_Open=1
let Tlist_Show_One_File=1
let Tlist_Exit_OnlyWindow=1
let Tlist_Use_Right_Window=1
"MiniBufExplorer
"let g:miniBufExplMapWindowNavVim = 1 
"let g:miniBufExplMapWindowNavArrows = 1 
"let g:miniBufExplMapCTabSwitchBufs = 1 
"let g:miniBufExplModSelTarget = 1

