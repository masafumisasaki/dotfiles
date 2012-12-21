set nocompatible
filetype off
 
 set rtp+=~/.vim/vundle.git/
 call vundle#rc()
  
" vim-scripts リポジトリ (1)
Bundle "Align"
Bundle "SQLUtilities"  
Bundle "perl-support.vim" 
Bundle "perlomni.vim"
Bundle 'unite.vim'
Bundle 'neocomplcache'
Bundle 'ZenCoding.vim'
Bundle 'mru.vim'

" github の任意のリポジトリ (2)
"Bundle "tpope/vim-fugitive"

" github 以外のリポジトリ (3)
"Bundle "git://git.wincent.com/command-t.git"

filetype plugin indent on

"""""""""""""""""""""""""""""""""""""""""""""

set nu
set nowrap
set textwidth=78
set ts=4
set expandtab "タブをスペースへ
set shiftwidth=4
set shiftround
set autoindent
set wildmenu "コマンドモード時の補完
set showmatch
set backspace=indent,eol,start
set clipboard=unnamed
set cursorline
set cursorcolumn

" バッファ関連
map ,b :bn<CR>

" タブ関連
map ,t :tabnew<CR>
map ,d :tabclose<CR>
map <RIGHT> :tabnext<CR>
map <LEFT> :tabNext<CR>

map ,e <Esc>:w<CR><Esc>:!perl -w %<CR>

" テンプレート
autocmd BufNewFile  *.pl      0r ~/.vim/template/perl.txt
autocmd BufNewFile  *.pm      0r ~/.vim/template/perl.txt
autocmd BufNewFile  *.tt      0r ~/.vim/template/tt.txt

" QuickFix
autocmd QuickfixCmdPost grep,vimgrep copen

"perl-support plugin
filetype plugin on

"クリップボード
vmap <C-c> "+yi
vmap <C-x> "+c
vmap <C-v> c<ESC>"+p
imap <C-v> <ESC>"+pa
map <C-a> ggVG

" FuzzyFinder.vim
"nnoremap <Space>f f
"nnoremap <Space>F F
"nnoremap f <Nop>
"nnoremap <silent> fb :<C-u>FuzzyFinderBuffer!<CR>
"nnoremap <silent> ff :<C-u>FuzzyFinderFile! <C-r>=expand('%:~:.')[:-1-len(expand('%:~:.:t'))]<CR><CR>
"nnoremap <silent> fm :<C-u>FuzzyFinderMruFile!<CR>
"nnoremap <silent> tb :<C-u>tabnew<CR>:tabmove<CR>:FuzzyFinderBuffer!<CR>
"nnoremap <silent> tf :<C-u>tabnew<CR>:tabmove<CR>:FuzzyFinderFile!  <C-r>=expand('#:~:.')[:-1-len(expand('#:~:.:t'))]<CR><CR>
"nnoremap <silent> tm :<C-u>tabnew<CR>:tabmove<CR>:FuzzyFinderMruFile!<CR>

nmap z, <C-y>,
vmap z, <C-y>,

colo wombat
if g:colors_name ==? 'wombat'
      hi Visual gui=none guifg=khaki guibg=olivedrab
endif
