" Specify a directory for plugins (for Neovim: ~/.local/share/nvim/plugged)
call plug#begin('~/.vim/plugged')

Plug 'junegunn/vim-easy-align'
Plug 'https://github.com/junegunn/vim-github-dashboard.git'
Plug 'https://github.com/pangloss/vim-javascript.git'
Plug 'SirVer/ultisnips' 
Plug 'honza/vim-snippets'
Plug 'tpope/vim-fugitive'

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'https://github.com/ahayman/vim-nodejs-complete.git'

Plug 'https://github.com/guileen/vim-node-dict.git'
Plug 'https://github.com/vim-scripts/AutoComplPop.git'

Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }

Plug 'mattn/emmet-vim'


call plug#end()


set nu
set hidden
set laststatus=2
set runtimepath^=~/.vim/bundle/node
set complete=k,.


inoremap <expr> <CR> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"

noremap <F2> :NERDTreeToggle<CR>

" JVASCRIPT CONFIGS
let g:javascript_conceal_function                  = "ƒ"
let g:javascript_conceal_null                      = "ø"
let g:javascript_conceal_this                      = "@"
let g:javascript_conceal_return                    = "⇚"
let g:javascript_conceal_undefined                 = "¿"
let g:javascript_conceal_NaN                       = "ℕ"
let g:javascript_conceal_prototype                 = "¶"
let g:javascript_conceal_static                    = "•"
let g:javascript_conceal_super                     = "Ω"
let g:javascript_conceal_arrow_function            = "⇒"
let g:javascript_conceal_noarg_arrow_function      = "🞅"
let g:javascript_conceal_underscore_arrow_function = "🞅"

" AIRLINE CONFIGS
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1

" EMMET CONFIGS
let g:user_emmet_install_global = 0
autocmd FileType html,css,php EmmetInstall





" Start interactive EasyAlign in visual mode (e.g. vipga)
xmap ga <Plug>(EasyAlign)
"
" " Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)

set conceallevel=1
set foldmethod=syntax
set autowrite

set t_Co=256
syntax on

imap <M-W> :w<CR>


autocmd FileType javascript nnoremap <F9> :!clear;node %<CR>
autocmd FileType lisp nnoremap <F9> :!clear;clisp %<CR>
autocmd FileType python nnoremap <F9> :!clear;python %<CR>


" Dicts

au FileType javascript set dictionary+=$HOME/.vim/plugged/vim-node-dict/dict/node.dict
