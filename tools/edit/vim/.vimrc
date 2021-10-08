"set term=screen

set ruler
set laststatus=2                " make the last line where the status is two lines deep so you can see status always
set backspace=indent,eol,start  " make that backspace key work the way it should
set nocompatible                " vi compatible is LAME
set showmode                    " show the current mode
syntax on                       " turn syntax highlighting on by default

"set fdm=indent
"
""行号{
set nu!
"set relativenumber
"}
"

"set guifont=h12
set hls
"set background=dark
set t_Co=256
"设置配色方案{
left g:molokai_original = 1
let g:rehash256 = 1
"desert
"colorscheme solarized molokai github lucius desert
"}
" markdown theme
"let g:detorte_theme_mode = 'dark'

"tab{
set tabstop=2
set expandtab
""}

filetype off

call plug#begin('~/.vim/plugged')
Plug 'git://github.com/tomasr/molokai.git'
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'michaelHL/awesome-vim-colorschemes'
Plug 'majutsushi/tagbar'
Plug 'godlygeek/tabular'
"Plug 'ctrlpvim/ctrlp.vim'
"Plug 'ack.vim'

"Plug 'vim-scripts/luainspect.vim'
"Plug 'xolox/vim-misc'
"Plug 'xolox/vim-lua-ftplugin'

Plug 'Shougo/neocomplcache'
Plug 'nathanaelkane/vim-indent-guides'
Plug 'Yggdroot/indentLine'
Plug 'airblade/vim-gitgutter'
Plug 'gregsexton/gitv'
Plug 'tpope/vim-fugitive'
Plug 'git://github.com/rking/ag.vim.git'

" Multiple Plug commands can be written in a single line using | separators
"Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'
Plug 'tpope/vim-surround'
Plug 'scrooloose/syntastic'
Plug 'Chiel92/vim-autoformat'
Plug 'tpope/vim-commentary'

Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
"Plug '/usr/bin/fzf'
Plug 'junegunn/fzf.vim'
Plug 'Yggdroot/LeaderF', { 'do': './install.sh' }
Plug 'mg979/vim-visual-multi'

"Plug 'tamlok/detorte'
"Plug 'tamlok/vim-markdown'
"Plug 'iamcco/mathjax-support-for-mkdp'
"Plug 'iamcco/markdown-preview.vim'
"Plug 'neoclide/coc.nvim', {'branch': 'release'}

" Initialize plugin system
call plug#end()


colorscheme molokai "neon evening molokai solarized molokai github lucius

filetype plugin indent on     " required

"set runtimepath^=~/.vim/bundle/ag
set runtimepath^=~/.vim/plugged/ag

"path{
set path=./
"}
" vim-indent-guides {
"let g:indent_guides_enable_on_vim_startup = 1 "添加行，vim启动时启用
"let g:indent_guides_start_level = 1           "添加行，开始显示对齐线的缩进级别
"let g:indent_guides_guide_size = 1            "添加行，对齐线的宽度，（1字符）
"let g:indent_guides_tab_guides = 0            "添加行，对tab对齐的禁用
"}
"
"indentLine{
"let g:indentLine_char='|'
let g:indentLine_char='|'
let g:indentLine_enabled = 1
"}

"ctrlp{
"let g:ctrlp_cmd = 'CtrlP'
"let g:ctrlp_map = '<c-p>'
"set wildignore+=*.o,*.exe,*.git,*.pdb,*.bak,*.so,*.a
"let g:ctrlp_by_filename = 1 " only lookup file name
"let g:ctrlp_max_height = 15
"let g:ctrlp_clear_cache_on_exit = 0
"let g:ctrlp_cache_dir = $HOME.'/.ctrlp/cache/'
"let g:ctrlp_working_path_mode = 'rw'
"let g:ctrlp_custom_ignore = {
"    \ 'dir':  '\v[\/]\.(git|hg|svn)$',
"    \ 'file': '\v\.(exe|so|dll|bak|gds|lib|suo|exp)$',
"    \ 'link': 'SOME_BAD_SYMBOLIC_LINKS',
"    \ }
"}


"调用ag进行搜索提升速度，同时不使用缓存文件
if executable('ag')
  set grepprg=ag\ --nogroup\ --nocolor
  "let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
  "let g:ctrlp_use_caching = 0
endif


"ctags{
set tags=tags;
set autochdir
nnoremap <silent> <F12> :A<CR>
":set grepprg=grep\ -nri 
""""""""""""""""""""""""""""""
" Tag list (ctags)
" """"""""""""""""""""""""""""""
let Tlist_Ctags_Cmd = '/usr/bin/ctags'

"Tagbar
let g:tagbar_ctags_bin = '/usr/bin/ctags'
let Tlist_Show_One_File = 1
"不同时显示多个文件的tag，只显示当前文件的
"let Tlist_Exit_OnlyWindow = 1
"如果taglist窗口是最后一个窗口，则退出vim
let Tlist_Use_Right_Window = 1         "在右侧窗口中显示taglist窗口
let Tlist_File_Fold_Auto_Close=1
"让不被编辑的文件的方法列表自动折叠起来
let Tlist_Show_Menu=1                  "显示taglist菜单
let Tlist_Auto_Open=0                  "启动vim自动启动TagList

let g:tagbar_type_lua = {
  \ 'ctagstype' : 'lua',
  \ 'kinds' : [
    \ 'm:modules:0:0',
    \ 'f:functions:0:1',
    \ 'v:locals:0:0'
  \ ],
  \ 'sort' : 0
\ }


let g:lua_inspect_events = ''

let mapleader=" "

" tips plug
"let g:pmenu_scheme = 'dark'
"let g:pmenu_scheme = 'macos'
"map <Tab>   <Plug>EasyCompTabTrigger
"imap <S-Tab> <Plug>EasyCompShiftTabTrigger
" easycompelte end============

" neocomplcache
let g:neocomplcache_enable_at_startup = 1
let g:neocomplcache_enable_auto_select = 1
"let g:neocomplcache_enable_quick_match = 1

let g:ag_prg='ag --column'
let g:ag_working_path_mode='r'

"git gutter
nmap ]c <Plug>GitGutterNextHunk
nmap [c <Plug>GitGutterPrevHunk

" syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 0
let g:syntastic_check_on_wq = 0
" syntastic end

" autoformat 操作符2边加空格
let g:formatdef_allman = '"astyle --style=allman --pad-oper"'
let g:autoformat_autoindent = 0
let g:autoformat_retab = 0
let g:autoformat_remove_trailing_spaces = 0

"map <C-F12> :!ctags -R --c++-kinds=+p --fields=+iaS --extra=+q.<CR>
map <C-F12> :!ctags -R --fields=+iaS --extra=+q.<CR>
"Press space twice to jump to the next '<++>' and edit it
map <LEADER><LEADER> <Esc>/<++><CR>:nohlsearch<CR>c4l

set tabstop=4
set softtabstop=4
set shiftwidth=4
set noexpandtab
set expandtab
set autoindent
set cindent
set cc=80
set list
set listchars=tab:>-,trail:-

set nocompatible
set noswapfile
set nobackup
set nowritebackup
set noundofile
set fileencodings=ucs-bom,utf-8,cp936,gb18030,big5,euc-jp,euc-kr,latin1
" before vim 8.1 modellines bug
set modelines=0
set nomodeline
inoremap :setl pastegi+:setl nopastegi

" fzf_begin{
map <leader>f :Rg<CR>
map <leader>p :Files<CR>
map <leader>b :Buffers<CR>
" Empty value to disable preview window altogether
" let g:fzf_preview_window = ''
"
" Always enable preview window on the right with 60% width
let g:fzf_preview_window = 'right:60%'
command! -bang -nargs=* Ag
  \ call fzf#vim#ag(<q-args>,
  \                 <bang>0 ? fzf#vim#with_preview('up:60%')
  \                         : fzf#vim#with_preview('right:50%:hidden', '?'),
  \                 <bang>0)
let g:fzf_layout = {'down':'40%'}
map <leader>a :Ag<CR>
nnoremap <silent> <Leader>A :Ag<CR>
" fzf_end}

"{ Leaderf_begin
let g:Lf_ShortcutF = '<C-P>'
map <leader>F :Leaderf! rg<CR>
"{ Leaderf_end
