" 常用快捷键 
" 注释 = ,cc

" pathogen
execute pathogen#infect()
call pathogen#helptags()

set nocompatible
let mapleader=','
set guifont=YaHei_Consolas_Hybrid:h11:cGB2312
colorscheme blackboard
set fenc=utf-8
set encoding=utf-8
set fileencodings=utf-8,gbk,cp936,latin-1
language messages zh_CN.utf-8
source $VIMRUNTIME/delmenu.vim
set clipboard=unnamed        " 与win共用剪贴板

" 自动缩进4空格
set cindent shiftwidth=4     
" 开启状态栏信息
set laststatus=2

" 打开语法高亮
syntax enable

" 文件类型检测
syntax on

" 查找book时，当输入/b时会自动找到
set incsearch

" 开启高亮显示结果
set hlsearch

" 显示行号
set nu
set backspace=2              " 设置退格键可用
" 允许在有未保存修改时切换缓冲区
set hidden

" 设置tab键的宽度
set tabstop=4

" 设置自动缩进
set autoindent

"自动缩进宽度 
set shiftwidth=4

" 使用空格代替tab
set expandtab
    
" 设置无文件备份和交换文件
set nobackup
set noswapfile
set hidden                   " 允许在有未保存的修改时切换缓冲区

" 选择代码折叠类型
set foldmethod=indent

" 禁止自动折叠
set foldlevel=99

" 不可见字符 尾部空格用点表示，其余空格不显示
set listchars=trail:.,tab:>-,eol:$
set nolist
:noremap ,i :set list!<CR>

" 自定义快捷键
inoremap jj <ESC>

filetype plugin indent on

" Omni Completeion
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
autocmd FileType css set omnifunc=csscomplete#CompleteCSS
autocmd FileType xml set omnifunc=xmlcomplete#CompleteTags
autocmd FileType php set omnifunc=phpcomplete#CompletePHP
autocmd filetype php setlocal dictionary+=$VIM/vimfiles/dict/php.dict
autocmd filetype python setlocal dictionary+=$VIM/vimfiles/dict/python.dict
set completeopt=longest,menuone
" set completeopt=preview,menuone

"设置tag为当前工作目录下的tags
set tags=tags

" NERDTree
" <leader>n for disabled mark plugin
:noremap tr :NERDTreeToggle<CR> 
let NERDTreeHijackNetrw=1
let NERDTreeMouseMode=1
let NERDTreeQuitOnOpen=0

" TagList
" map tl :Tlist<CR>
" let Tlist_Show_One_File = 1
" let Tlist_Use_Right_Window = 1

" VimWiki
let g:vimwiki_menu = ''
let g:vimwiki_hl_cb_checked = 1
" 设置编码
let g:vimwiki_w32_dir_enc = 'utf-8'
" 使用鼠标映射
let g:vimwiki_use_mouse = 1
" 不要将驼峰式词组作为 Wiki 词条
let g:vimwiki_camel_case = 0
" 声明可以在wiki里面使用的HTML标签
let g:vimwiki_valid_html_tags='font,b,i,s,u,sub,sup,kbd,br,hr,div,del,code,red,center,left,right,h4,h5,h6,pre,kbo'
let g:vimwiki_list = [{
\ 'path': 'E:/wlh_sp/notes/wiki/',
\ 'path_html': 'E:/wlh_sp/notes/html/',
\ 'template_path': 'E:/wlh_sp/notes/template/',
\ 'template_default': 'default',
\ 'template_ext': '.html',
\ 'auto_export': 1,
\ 'nested_syntaxes': {'C': 'c', 'C++': 'cpp', 'Haskell': 'haskell', 'Ruby': 'ruby', 'SQL': 'sql', 'HTML': 'html', 'CSS': 'css', 'JavaScript': 'javascript', 'Vim': 'vim', 'Make': 'make'},}]

" fuzzyfinder 
" let g:fuf_file_exclude = '\v\~$|\.(o|exe|dll|bak|sw[po]|obj|pyc|pyo|beam|gz)$|(^|[/\\])\.(hg|git|bzr)($|[/\\])'
" let g:fuf_modesDisable = ['help']
" let g:fuf_mrufile_maxItem = 300
" let g:fuf_mrucmd_maxItem = 400
" map ,B :FufBuffer<CR>
" map ,b :FufBufferTag<CR> 
" map ,F :FufFile<CR>
" map ,f :FufTaggedFile<CR>
" map ,d :FufDir<CR>
" map ,t :FufTag<CR>
" map ,h :FufMruFile<CR>
" map ,H :FufMruCmd<CR>

" ACP
let g:acp_enableAtStartup = 0
let g:acp_behaviorKeywordLength = 2

" AutoClose
autocmd FileType javascript let b:AutoCloseProtectedRegions = ["Dialog", "ThoughBubble"]
autocmd FileType python let b:AutoCloseProtectedRegions = ["Dialog", "ThoughBubble"]

" NERD_Commenter
let NERDSpaceDelims = 1

" PHPDOC
map <F6> :call PhpDoc()<cr>

"Calender
map <F8> :Calendar<cr>

let g:python_version_2 = 1

" 添加时间戳
nmap <F3> a<C-R>=strftime("%Y-%m-%d %a %I:%M %p")<CR><Esc>
imap <F3> <C-R>=strftime("%Y-%m-%d %a %I:%M %p")<CR>

map <F11> :!node %<CR>

" 添加文件类型 jsfl
autocmd BufRead,BufNewFile *.jsfl set filetype=javascript 

" ctags for js
" let Tlist_JS_Settings = 'javascript;s:string;a:array;o:object;f:function'
" " let Tlist_Ctags_Cmd = 'C:\Program Files (x86)\Vim\tools\ctags.exe'

nmap tl :TagbarToggle<CR>
