"config begin
"impressive : http://amix.dk/vim/vimrc.html

"==========================================
"General
"==========================================

" history�洢���ȡ�
set history=1000       

"����ļ�����
filetype on
" ��Բ�ͬ���ļ����Ͳ��ò�ͬ��������ʽ  
filetype indent on               
"������  
filetype plugin on
"�����Զ���ȫ
filetype plugin indent on

" �Ǽ���viģʽ��ȥ��������й�viһ����ģʽ��������ǰ�汾��һЩbug�;���
set nocompatible      
set autoread          " �ļ��޸�֮���Զ����롣
set shortmess=atI       " ������ʱ����ʾ�Ǹ�Ԯ���������ͯ����ʾ

" ȡ�����ݡ�
" Turn backup off, since most stuff is in SVN, git et.c anyway...
set nobackup
set nowb
set noswapfile

set autoindent
set cindent
"ճ��ʱ���ָ�ʽ
set paste
"- ������겻�ỻ,���ڸ���
set mouse-=a           " �����е�ģʽ�������ꡣ
set selection=exclusive  
set selectmode=mouse,key

" No annoying sound on errors
" ȥ������������ʾ����
set noerrorbells
set novisualbell
set t_vb=
set tm=500


"==========================================
" show and format
"==========================================
"��ʾ�кţ�
set number
set nowrap                    " ȡ�����С�
""Ϊ���㸴�ƣ���<F2>����/�ر��к���ʾ:
nnoremap <F2> :set nonumber!<CR>:set foldcolumn=0<CR>


"����������
"set showmatch
" How many tenths of a second to blink when matching brackets
"set mat=2

"������������������ʾ
" ����search���е��ı���
set hlsearch          
" ����ʱ���Դ�Сд
set ignorecase
" ���ż��뼴ʱ����
set incsearch
" ��һ�������ϴ�д��ĸʱ�Դ�Сд����
set smartcase

" �����۵�
"set foldenable
" �۵�����
" manual    �ֹ��۵�
" indent    ʹ��������ʾ�۵�
" expr      ʹ�ñ��ʽ�����۵�
" syntax    ʹ���﷨�����۵�
" diff      ��û�и��ĵ��ı������۵�
" marker    ʹ�ñ�ǽ����۵�, Ĭ�ϱ���� {{{ �� }}}
"set foldmethod=syntax
" �������ʾ�۵��Ĳ��
"set foldcolumn=4

set tabstop=4                " ����Tab���Ŀ��        [��ͬ�Ŀո����]
set shiftwidth=4
set expandtab                " ��Tab�Զ�ת���ɿո�    [��Ҫ����������Tab��ʱ��ʹ�� Ctrl+V + Tab]
" ���˸��ʱ����һ��ɾ�� 4 ���ո�
set softtabstop=4

set ai "Auto indent
set si "Smart indent

"==========================================
" status
"==========================================
"��ʾ��ǰ���к��кţ�
set ruler
""��״̬����ʾ�������������
set showcmd

" Set 7 lines to the cursor - when moving vertically using j/k ���¹���,ʼ�����м�
set so=7

"set cursorline              " ͻ����ʾ��ǰ��

" �����У���״̬���£��ĸ߶ȣ�Ĭ��Ϊ1��������2
"set cmdheight=2
"set rulerformat=%20(%2*%<%f%=\ %m%r\ %3l\ %c\ %p%%%)
"set statusline=%F%m%r%h%w\[POS=%l,%v][%p%%]\%{strftime(\"%d/%m/%y\ -\ %H:%M\")}
set statusline=%<%f\ %h%m%r%=%k[%{(&fenc==\"\")?&enc:&fenc}%{(&bomb?\",BOM\":\"\")}]\ %-14.(%l,%c%V%)\ %P
" Always show the status line
"set laststatus=2


"==========================================
"colors and fonts
"==========================================
"�����﷨����
syntax enable
syntax on

"��ɫ���� ����,ѡһ��
"colorscheme darkblue          " ����ɫ��ɫ������
set background=dark
colorscheme desert " ������ɫ������
"colorscheme solarized
colorscheme  candy
"colorscheme  gruvbox

"ͬsublime text2
set t_Co=256

" Set extra options when running in GUI mode
if has("gui_running")
    set guioptions-=T
    set guioptions+=e
    set t_Co=256
    set guitablabel=%M\ %t
endif
"set guifont=Monaco:h20          " ���� && �ֺ�  

"==========================================
" file encode
"==========================================
" �������ļ��ı���Ϊ UTF-8
set fileencoding=utf8
"set enc=2byte-gb18030
" �Զ��жϱ���ʱ�����γ������±��룺
set fileencodings=ucs-bom,utf-8,gb18030,default
" gb18030 ����� UTF-8 ǰ�棬��������������ļ������ܱ���ʶΪ UTF-8

" Use Unix as the standard file type
set ffs=unix,dos,mac

" ����Unicodeֵ����255���ı������صȵ��ո������С�
set formatoptions+=m
" �ϲ���������ʱ�������м�ӿո�
set formatoptions+=B


"==========================================
"others
"==========================================

autocmd! bufwritepost _vimrc source % " vimrc�ļ��޸�֮���Զ����ء� windows��
autocmd! bufwritepost .vimrc source % " vimrc�ļ��޸�֮���Զ����ء� linux��


" �Զ���� 

"set completeopt=longest,menu
" ��ǿģʽ�е��������Զ���ɲ���
set wildmenu
" Ignore compiled files
set wildignore=*.o,*~,*.pyc

" Python �ļ���һ�����ã����粻Ҫ tab ��
autocmd FileType python set tabstop=4 shiftwidth=4 expandtab
"�Զ���ȫ����
autocmd FileType python set omnifunc=pythoncomplete#Complete


" Return to last edit position when opening files (You want this!)
autocmd BufReadPost *
     \ if line("'\"") > 0 && line("'\"") <= line("$") |
     \   exe "normal! g`\"" |
     \ endif

" A buffer becomes hidden when it is abandoned
"set hid

" For regular expressions turn magic on
set magic

" Configure backspace so it acts as it should act
set backspace=eol,start,indent
set whichwrap+=<,>,h,l
autocmd FileType python map <F12> :!python %<CR>
autocmd FileType c      map <F12> :!gcc %<CR>
autocmd FileType cpp    map <F12> :!g++ %<CR>
autocmd FileType c  map <F9>  :!./a.out<CR>
autocmd FileType cpp map <F9> : !./a.out<CR>
"pydiction 1.2 python auto complete
let g:pydiction_location = '~/.vim/tools/pydiction/complete-dict'
"defalut g:pydiction_menu_height == 15
let g:pydiction_menu_height = 20 





let Tlist_Show_One_File=1
let Tlist_Exit_OnlyWindow=1

map <F4> :Tlist<CR>
