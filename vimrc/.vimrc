"let $PYTHONPATH='/usr/lib/python3.4/site-packages'
set laststatus=2
set backupcopy=no

syntax on
filetype plugin indent on

set nocompatible      " We're running Vim, not Vi!
filetype on           " Enable filetype detection
filetype plugin on    " Enable filetype-specific plugins
autocmd FileType ruby compiler ruby

set autoindent

set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'
"Plugin 'Valloric/YouCompleteMe'
Plugin 'vim-ruby/vim-ruby'
Plugin 'nelstrom/vim-textobj-rubyblock'
Plugin 'tpope/vim-sensible'
Plugin 'kana/vim-textobj-user'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'bling/vim-airline'
Plugin 'Glench/Vim-Jinja2-Syntax'
Plugin 'parkr/vim-jekyll'
Plugin 'tpope/vim-fugitive'
Plugin 'morhetz/gruvbox'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'fatih/vim-hclfmt'
Plugin 'hashivim/vim-terraform'
Plugin 'vim-syntastic/syntastic'
Plugin 'juliosueiras/vim-terraform-completion'
call vundle#end()

set autoindent
set backspace=indent,eol,start
set cindent " set smartindent
set cmdheight=2
set cursorcolumn
set cursorline
set errorformat=\"../../%f\"\\,%*[^0-9]%l:\ %m
"set expandtab
set hidden
set hlsearch
set ignorecase
set incsearch
set laststatus=2
set list
"set listchars=tab:>-,trail:-
"set mouse=c
set nowrap
set number
set ruler
set scrolloff=5
set showcmd
set showmatch
"set smarttab
"set statusline=%F%m%r%h%w\ [%{&ff}]\ %y\ [CHR=%b/0x%B]\
"[POS=%04l,%03c(%03v)]\ [%p%%]\ [LEN=%L]\ %{fugitive#statusline()}
"set t_Co=256
"set tags=tags;/
"set virtualedit=block
set wrap
set colorcolumn=80

highlight   CursorColumn  term=NONE    cterm=none ctermbg=232
highlight   CursorLine    term=NONE    cterm=bold ctermbg=8
highlight   FoldColumn                            ctermbg=8  ctermfg=14
highlight   Folded                                ctermbg=8  ctermfg=14
highlight   Search        term=reverse cterm=bold ctermbg=11 ctermfg=0
highlight   Visual        term=NONE    cterm=bold ctermbg=10 ctermfg=8

autocmd Filetype ruby setlocal ts=2 sw=2 expandtab
autocmd Filetype yaml setlocal ts=2 sw=2 expandtab
autocmd Filetype sls setlocal ts=2 sw=2 expandtab
autocmd Filetype jinja setlocal ts=2 sw=2 expandtab
autocmd Filetype sh setlocal ts=2 sw=2 expandtab
autocmd Filetype groovy setlocal ts=4 sw=4 expandtab

autocmd BufNewFile,BufRead *.yml setlocal filetype=yaml
autocmd BufNewFile,BufRead *.jinja setlocal filetype=jinja
autocmd BufNewFile,BufRead *.sls setlocal filetype=sls
autocmd BufNewFile,BufRead Jenkinsfile setlocal filetype=groovy
autocmd BufNewFile,BufRead *.groovy setlocal filetype=groovy

vnoremap // y/<C-R>"<CR>
nnoremap <Leader>t :CtrlPBuffer<CR>

if executable('rg')
  set grepprg=rg\ --color=never
  let g:ctrlp_user_command = 'rg %s --files --color=never --glob ""'
  let g:ctrlp_use_caching = 0
endif

" Terraform
let g:tf_fmt_autosave = 1

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" (Optional)Remove Info(Preview) window
set completeopt-=preview

" (Optional)Hide Info(Preview) window after completions
autocmd CursorMovedI * if pumvisible() == 0|pclose|endif
autocmd InsertLeave * if pumvisible() == 0|pclose|endif

" (Optional) Enable terraform plan to be include in filter
let g:syntastic_terraform_tffilter_plan = 1

" (Optional) Default: 0, enable(1)/disable(0) plugin's keymapping
let g:terraform_completion_keys = 1

" (Optional) Default: 1, enable(1)/disable(0) terraform module registry completion
let g:terraform_registry_module_completion = 0

let g:syntastic_sh_shellcheck_args="-x"

" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<C-b>"
let g:UltiSnipsJumpBackwardTrigger="<C-z>"

" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"
