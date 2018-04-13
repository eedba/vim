" 不要使用vi的键盘模式，而是vim自己的
set nocompatible
filetype off

let mapleader = ","
let g:mapleader = ','

set nobackup
set nowb
set noswapfile

"编码
"set fencs=utf-8,ucs-bom,shift-jis,gb18030,gbk,gb2312,cp936
"set termencoding=utf-8
set encoding=utf-8
set fileencodings=utf-8,gbk,chinese,cp936,gb18030,utf-16le,utf-16,big5,euc-jp,euc-kr,latin-1
"set fileencoding=utf-8

set t_Co=256
"Enable sytax higglighting
syntax on
"Select a colorscheme
colorscheme elflord
set guifont=Monaco:h12
set guifontwide=Monaco:h12
let g:molokai_original = 1
"可以使用退格删除文字
set backspace=indent,eol,start
"显示光标所在位置
set ruler
set rulerformat=%57(%50t[%{&ff},%Y]\ %m\ %l,%c\ %p%%%)
"显示未输入完的命令
set showcmd

" 搜索时忽略大小写，但在有一个或以上大写字母时仍大小写敏感
set ignorecase
set smartcase
"set incsearch		" 实时搜索
set hlsearch		" 搜索时高亮显示被找到的文本
set wildignore+=*/tmp/*,*.so,*.o,*.a,*.obj,*.swp,*.zip,*.pyc,*.pyo,*.class,.DS_Store,*/.idea/*  " MacOSX/Linux

"去掉搜索高亮
noremap <silent><leader>/ :nohls<CR>

"允许撤销次数
set undolevels=1000
"Tab键的宽度
set wildmenu
set matchpairs=(:),{:},[:],<:>
set whichwrap=b,s,<,>,[,]
"显示行号
set number
"光标移动到buffer的顶部和底部时候保持3行距离
set scrolloff=3
"允许折叠/禁用折叠
"set foldenable
set nofoldenable
"手动折叠
set foldmethod=manual

" 设置当文件被改动时自动载入
set autoread
" quickfix模式
"autocmd FileType c,cpp map <buffer> <leader><space> :w<cr>:make<cr>
"代码补全
set completeopt=preview,menu

"共享剪贴板
set clipboard+=unnamed

" 总是显示状态行
set laststatus=2

" 带有如下符号的单词不要被换行分割
set iskeyword+=_,$,@,%,#,-
"字符间插入的像素行数目
set linespace=2

" 高亮显示匹配的括号
set showmatch
set helplang=cn		"设置中文帮助
set encoding=utf-8	"打开uft-8文件不乱码
set history=500		"保留历史记录
set magic			"用于正则表达式
set mouse=a			"设定在任何模式下鼠标都可用
" 插入模式输入中文完毕回到普通模式时禁用输入法
"se imd
"au InsertEnter * se noimd
"au InsertLeave * se imd
"au FocusGained * se imd

"关于高亮
:let hs_highlight_delimiters=1            " 高亮定界符
:let hs_highlight_boolean=1               " 把True和False识别为关键字
:let hs_highlight_types=1                 " 把基本类型的名字识别为关键字
:let hs_highlight_more_types=1            " 把更多常用类型识别为关键字
:let hs_highlight_debug=1                 " 高亮调试函数的名字
:let hs_allow_hash_operator=1             " 阻止把#高亮为错误

set ambiwidth=single
syntax enable
"键盘命令
map <D-v> "+gp
map <D-c> "+y

"设置空格
set shiftwidth=4
set tabstop=4
autocmd FileType html,python,vim,javascript setlocal shiftwidth=2
autocmd FileType html,python,vim,javascript setlocal tabstop=2
set expandtab
set smartindent
set smarttab
