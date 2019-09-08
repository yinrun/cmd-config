call plug#begin('~/.vim/plugged')

Plug 'itchyny/lightline.vim'
Plug 'rdnetto/YCM-Generator', { 'branch': 'stable'}
Plug 'scrooloose/nerdtree'
Plug 'ctrlpvim/ctrlp.vim'

Plug 'ycm-core/YouCompleteMe'
Plug 'vim-scripts/taglist.vim'
Plug 'vim-scripts/winmanager'
Plug 'jlanzarotta/bufexplorer'
Plug 'altercation/vim-colors-solarized'

call plug#end()

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"   *****   Taglist Settings   *****
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" 不同时显示多个文件的 tag ，只显示当前文件的
let Tlist_Show_One_File=1

" 如果 taglist 窗口是最后一个窗口，则退出 vim
let Tlist_Exit_OnlyWindow=1

"让当前不被编辑的文件的方法列表自动折叠起来
let Tlist_File_Fold_Auto_Close=1

"把taglist窗口放在屏幕的右侧，缺省在左侧
"let Tlist_Use_Right_Window=1

"显示taglist菜单
let Tlist_Show_Menu=1

"启动vim自动打开taglist
"let Tlist_Auto_Open=1

"   *****   Taglist Settings End   *****

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"   *****   winManager Settings   *****
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"let g:winManagerWindowLayout = "BufExplorer|FileExplorer|TagList"
let g:winManagerWindowLayout='NERDTree|TagList,BufExplorer'

let g:winManagerWidth = 30
nmap wm :WMToggle<cr>
nmap <silent> wm :if IsWinManagerVisible() <BAR> WMToggle<CR> <BAR> else <BAR> WMToggle<CR>:q<CR> endif <CR>

"Used by winmanager
let g:NERDTree_title = "[NERDTree]"

"avoid open a blank page for NERDTree when used in winManager
function! NERDTree_Start()
  exe 'NERDTree'
endfunction

function! NERDTree_IsValid()
  return 1
endfunction
"   *****   winManager Settings End   *****


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"   *****   Colorscheme Settings   *****
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:solarized_termcolors=256
syntax enable
set background=dark
colorscheme solarized
"   *****   Colorscheme Settings End   *****

let g:ycm_global_ycm_extra_conf='~/.vim/plugged/YouCompleteMe/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py'
set tags+=/home/lvyinrun/Maple/maple/mrt/tags;
set autochdir

" 这项必须设定，否则出错,配置taglist的ctags路径
"let Tlist_Ctags_Cmd = 'ctags'

set autoindent " 设置自动对齐(缩进)：即每行的缩进值与上一行相等；使用 noautoindent 取消设置
set smartindent " 智能对齐方式
set smartcase "如果有一个大写字母，切换到大小写敏感查询
set tabstop=4 " 设置制表符(tab键)的宽度
set expandtab
set softtabstop=4 " 设置软制表符的宽度
set shiftwidth=4 " (自动) 缩进使用的4个空格
set cindent " 使用 C/C++ 语言的自动缩进方式
set cinoptions={0,1s,t0,n-2,p2s,(03s,=.5s,>1s,=1s,:1s "设置C/C++语言的具体缩进方式
set backspace=2 " 设置退格键可用
"set showmatch " 设置匹配模式，显示匹配的括号
"set linebreak " 整词换行
"set whichwrap=b,s,<,>,[,] " 光标从行首和行末时可以跳到另一行去
"set hidden " Hide buffers when they are abandoned
set mouse=a " Enable mouse usage (all modes) 使用鼠标
set number " Enable line number "

" 高亮显示当前行/列
set cursorline
set cursorcolumn
" 高亮显示搜索结果
set hlsearch
"highlight CursorLine cterm=NONE ctermbg=4 ctermfg=white guibg=darkred guifg=white
"highlight CursorColumn cterm=NONE ctermbg=4 ctermfg=white guibg=darkred guifg=white
