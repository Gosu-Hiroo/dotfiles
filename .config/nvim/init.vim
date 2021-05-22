source ~/.vimrc

filetype plugin on
"let mapleader = "\<Space>"
nnoremap <silent><C-e> :NERDTreeToggle<CR>
nmap <C-_>   <Plug>NERDCommenterToggle
vmap <C-_>   <Plug>NERDCommenterToggle<CR>gv

vnoremap // y/\V<C-R>=escape(@",'/\')<CR><CR>

autocmd vimenter * ++nested colorscheme gruvbox
"au TextChanged,TextChangedI <buffer> if &readonly == 0 && filereadable(bufname('%')) | silent write | endif
"Plugin
"
call plug#begin('~/.local/share/nvim/plugged')

"auto-pairs
"Plug 'jiangmiao/auto-pairs'

"nerdtree
Plug 'preservim/nerdtree'
let g:nerdtree_tabs_open_on_console_startup=1

"vimtex
Plug 'lervag/vimtex'
let g:tex_flavor='latex'
let g:vimtex_view_method='zathura'
let g:vimtex_quickfix_mode=0
let g:latex_latexmk_options='-pdf -pvc'

"tex-conceal
Plug   'KeitaNakamura/tex-conceal.vim'
set conceallevel=2
let g:tex_conceal='abdmg'

"ultisnips
Plug 'sirver/ultisnips'
""let g:UltiSnipsSnippetsDir="~/.vim/ultisnips.snippets.d/latex.snippets""
let g:UltiSnipsSnippetDirectories=["~/.vim/ultisnips.snippets.d"]
let g:UltiSnipsExpandTrigger='<tab>'
let g:UltiSnipsJumpForwardTrigger='<tab>'
let g:UltiSnipsJumpBackwardTrigger='<s-tab>'

"lightline
Plug 'itchyny/lightline.vim'

"vim-floatterm
Plug 'voldikss/vim-floaterm'
let g:floaterm_keymap_toggle = '<F1>'
let g:floaterm_keymap_next   = '<F2>'
let g:floaterm_keymap_prev   = '<F3>'
let g:floaterm_keymap_new    = '<F4>'
let g:floaterm_gitcommit='floaterm'
let g:floaterm_autoinsert=1
let g:floaterm_width=0.8
let g:floaterm_height=0.8
let g:floaterm_wintitle=0
let g:floaterm_autoclose=1

"polyglot
Plug 'sheerun/vim-polyglot'

"rnvimr
Plug 'kevinhwang91/rnvimr'
let g:rnvimr_ex_enable = 1

"deoplete
"if has('nvim')
"  Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
"else
"  Plug 'Shougo/deoplete.nvim'
"  Plug 'roxma/nvim-yarp'
"  Plug 'roxma/vim-hug-neovim-rpc'
"endif
"let g:deoplete#enable_at_startup = 1
"call deoplete#custom#var('omni', 'input_patterns', {'tex': g:vimtex#re#deoplete})

"ale
Plug 'dense-analysis/ale'
let g:ale_fixers = {
\   '*': ['remove_trailing_lines', 'trim_whitespace'],
\   'javascript': ['eslint'],
\    'latex': ['lacheck', 'ChkTeX']
\}
let g:ale_fix_on_save = 1

"vim-commentary"

Plug 'scrooloose/nerdcommenter'

"vim-fugitive
"Plug 'vim-fugitive'

"coc
Plug 'neoclide/coc.nvim'

"fzf
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'airblade/vim-rooter'

"gruvbox color theme
Plug 'morhetz/gruvbox'

"markdown
Plug 'godlygeek/tabular'
Plug 'plasticboy/vim-markdown'
let g:vim_markdown_math = 1
let g:vim_markdown_frontmatter = 1
let g:vim_markdown_conceal = 0
"let g:vim_markdown_conceal_code_blocks = 0
"let g:vim_markdown_folding_disabled = 1
let g:vim_markdown_folding_style_pythonic = 1

filetype plugin on
Plug 'suan/vim-instant-markdown', {'for': 'markdown'}
let g:instant_markdown_mathjax = 1
let g:instant_markdown_browser = "brave-browser-nightly --new-window"

Plug 'vim-scripts/vim-auto-save'
let g:auto_save = 1
let g:auto_save_in_insert_mode = 0

"Plug 'dylanaraps/wal.vim'


call plug#end()
"Plugin end
"colorscheme wal
syntax enable
set background=dark
hi Conceal ctermbg=none
colorscheme gruvbox
