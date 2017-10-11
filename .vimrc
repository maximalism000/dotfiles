set number
set clipboard=unnamed,autoselect
set hlsearch
set backspace=indent,eol,start

syntax on




" タブ幅の設定
set expandtab
set tabstop=2
set softtabstop=2
set shiftwidth=2


"---------------------------
" Start Neobundle Settings.
"---------------------------
" bundleで管理するディレクトリを指定
set runtimepath+=~/.vim/bundle/neobundle.vim/
 
" Required:
call neobundle#begin(expand('~/.vim/bundle/'))
 
" neobundle自体をneobundleで管理
NeoBundleFetch 'Shougo/neobundle.vim'

NeoBundle 'scrooloose/nerdtree'
NeoBundle 'davidhalter/jedi-vim'
NeoBundle 'scrooloose/syntastic'
NeoBundle 'ervandew/supertab' 


call neobundle#end()
 
" Required:
filetype plugin indent on


let g:syntastic_python_checkers = ['pyflakes', 'pep8']


" 未インストールのプラグインがある場合、インストールするかどうかを尋ねてくれるようにする設定
" 毎回聞かれると邪魔な場合もあるので、この設定は任意です。
NeoBundleCheck

"-------------------------
" End Neobundle Settings.
"-------------------------
