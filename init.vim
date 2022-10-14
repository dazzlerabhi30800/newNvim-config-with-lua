:set number
:set wrap
:set clipboard+=unnamedplus
:set mouse=a
:set encoding=UTF-8
:set linespace=3
:set showmatch
:set cmdheight=2
:set smartindent
" :set tabstop=4
:set termguicolors 
:hi Cursor guifg=green guibg=green
:hi Cursor2 guifg=red guibg=red
:set guicursor=n-v-c:block-Cursor/lCursor,i-cr:hor20,r-cr:hor20,o:hor50




"noremap <C-ScrollWheelUp> :call AdjustFontSize(1)<CR>
"noremap <C-ScrollWheelDown> :call AdjustFontSize(-1)<CR>
"inoremap <C-ScrollWheelUp> <Esc>:call AdjustFontSize(1)<CR>a
"inoremap <C-ScrollWheelDown> <Esc>:call AdjustFontSize(-1)<CR>a

nnoremap <silent><RightMouse> :call GuiShowContextMenu()<CR>
inoremap <silent><RightMouse> <Esc>:call GuiShowContextMenu()<CR>
vnoremap <silent><RightMouse> :call GuiShowContextMenu()<CR>




"Save the file using Ctrl + s
:nmap <c-s> :w<CR>
:imap <c-s> <Esc>:w<CR>a

call plug#begin('C:/Users/abhis/AppData/Local/nvim/plugged')
Plug 'https://github.com/ryanoasis/vim-devicons' "devIcons
Plug 'https://github.com/vim-airline/vim-airline'
" Plug 'https://github.com/morhetz/gruvbox'  "Gruvbox theme


" Plug 'https://github.com/tc50cal/vim-terminal' " Vim Terminal
Plug 'https://github.com/rafi/awesome-vim-colorschemes' " Retro Scheme
Plug 'https://github.com/christoomey/vim-tmux-navigator' "tmux navigator
Plug 'dstein64/nvim-scrollview'
Plug 'https://github.com/tiagofumo/vim-nerdtree-syntax-highlight' "Nerd tree syntax highlight
Plug 'https://github.com/Xuyuanp/nerdtree-git-plugin' "Nerd Tree
Plug 'https://github.com/preservim/nerdcommenter' "nerd commenter
Plug 'https://github.com/preservim/nerdtree'
" Plug 'neoclide/coc.nvim', {'branch': 'release'}

" post install (yarn install | npm install) then load plugin only for editing supported files
Plug 'prettier/vim-prettier', { 'do': 'yarn install --frozen-lockfile --production' }

" Plug 'https://github.com/mattn/emmet-vim' "emmet plugin

Plug 'tpope/vim-commentary' "another commenter for comment toggler



"for pairs
" Plug 'jiangmiao/auto-pairs'

" Language Syntax Support
Plug 'yuezk/vim-js'
Plug 'styled-components/vim-styled-components', { 'branch': 'main' }
Plug 'jparise/vim-graphql' "graphql syntax highlighting
Plug 'sheerun/vim-polyglot'
Plug 'neoclide/vim-jsx-improve'
Plug 'mxw/vim-jsx' "for jsx
Plug 'suy/vim-context-commentstring' "important for surround
Plug 'tpope/vim-surround' "for creating surround tags
Plug 'maxmellon/vim-jsx-pretty'





"Plugin for tabs 
Plug 'kyazdani42/nvim-web-devicons'
Plug 'romgrk/barbar.nvim'


"file finder plugin
" Plug 'ctrlpvim/ctrlp.vim'

set encoding=UTF-8

call plug#end()


"requirement for the lua 
lua require('init')





" colorscheme flattened_dark 
set termguicolors
let g:limelight_conceal_ctermfg = 240
let g:limelight_conceal_guifg = '#777777'
" hi! Normal ctermbg=NONE guibg=#000
hi! NonText ctermbg=NONE guibg=NONE guifg=NONE ctermfg=NONE
let macvim_skip_colorscheme=1
highlight LineNr guibg=NONE
"making background Transparent
" au ColorScheme * hi Normal ctermbg=none guibg=none
" au ColorScheme myspecialcolors hi Normal ctermbg=red guibg=red
" highlight Normal guibg=none
" highlight NonText guibg=none

"configuring emmet
let g:user_emmet_leader_key='<Tab>'
" let g:user_emmet_expandabbr_key = '<Tab>'


"Setting up nerd Tree
inoremap jk <ESC>
nmap <C-y> :NERDTreeToggle<CR>
vmap gcc <plug>NERDCommenterToggle
nmap gcc <plug>NERDCommenterToggle
let g:NERDTreeDirArrowExpandable="+"
let g:NERDTreeDirArrowCollapsible="~"

" sync open file with NERDTree
" " Check if NERDTree is open or active
function! IsNERDTreeOpen()        
  return exists("t:NERDTreeBufName") && (bufwinnr(t:NERDTreeBufName) != -1)
endfunction

" Call NERDTreeFind iff NERDTree is active, current window contains a modifiable
" file, and we're not in vimdiff
function! SyncTree()
  if &modifiable && IsNERDTreeOpen() && strlen(expand('%')) > 0 && !&diff
    NERDTreeFind
    wincmd p
  endif
endfunction

" airline symbols
" let g:shades_of_purple_airline = 1
" let g:airline_theme='gotham'
" let g:shades_of_purple_lightline = 1
" let g:lightline = { 'colorscheme': 'gotham' }
" let g:airline_powerline_fonts = 1




if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ''


" Splits and tabbed files
set splitbelow splitright

" Remap splits navigation to just CTRL + hjkl
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l


" Make adjusing split sizes a bit more friendly
noremap <silent> <C-Left> :vertical resize +3<CR>
noremap <silent> <C-Right> :vertical resize -3<CR>
noremap <silent> <C-Up> :resize +3<CR>
noremap <silent> <C-Down> :resize -3<CR>



" Change 2 split windows from vert to horiz or horiz to vert
map <Leader>th <C-w>t<C-w>H
map <Leader>tk <C-w>t<C-w>K


"Moving the line in upwared direction

" xnoremap K :move '<-2<CR>gv-gv
" xnoremap J :move '>+1<CR>gv-gv

"setting for scrollbar
let g:scrollview_excluded_filetypes = ['nerdtree']
let g:scrollview_current_only = 1
let g:scrollview_winblend = 75
" Position the scrollbar at the 80th character of the buffer
let g:scrollview_base = 'buffer'
let g:scrollview_column = 105


"coc config"
" let g:coc_global_extensions = [
"   \ 'coc-snippets',
"   \ 'coc-pairs',
"   \ 'coc-tsserver',
"   \ 'coc-eslint', 
"   \ 'coc-json', 
"   \ ]


" if hidden is not set, TextEdit might fail.
:set hidden " Some servers have issues with backup files, see #649 set nobackup set nowritebackup " Better display for messages set cmdheight=2 " You will have bad experience for diagnostic messages when it's default 4000.
:set updatetime=300

" don't give |ins-completion-menu| messages.
:set shortmess+=c

" always show signcolumns
" :set signcolumn=yes

:set secure


"JS syntax highlighting
let g:javascript_plugin_jsdoc = 1
let g:javascript_plugin_ngdoc = 1
let g:javascript_plugin_flow = 1

"Setting colorscheme
let g:vim_jsx_pretty_colorful_config = 1 " default 0
let g:jsx_ext_required = 1
let g:jsx_pragma_required = 1




" Whether the .jsx extension is required.
if !exists('g:jsx_ext_required')
	let g:jsx_ext_required = 1
endif

" Whether the @jsx pragma is required.
if !exists('g:jsx_pragma_required')
	let g:jsx_pragma_required = 0
endif

let s:jsx_pragma_pattern = '\%^\_s*\/\*\*\%(\_.\%(\*\/\)\@!\)*@jsx\_.\{-}\*\/'

" Whether to set the JSX filetype on *.js files.
fu! <SID>EnableJSX()
	if g:jsx_pragma_required && !exists('b:jsx_ext_found')
		" Look for the @jsx pragma.  It must be included in a docblock comment
		" before anything else in the file (except whitespace).
		let b:jsx_pragma_found = search(s:jsx_pragma_pattern, 'npw')
	endif

	if g:jsx_pragma_required && !b:jsx_pragma_found | return 0 | endif
	if g:jsx_ext_required && !exists('b:jsx_ext_found') | return 0 | endif
	return 1
endfu

autocmd BufNewFile,BufRead *.jsx let b:jsx_ext_found = 1
autocmd BufNewFile,BufRead *.jsx set filetype=javascript.jsx
autocmd BufNewFile,BufRead *.js if <SID>EnableJSX() | set filetype=javascript.jsx | endif
if exists('g:context#commentstring#table')
	let g:context#commentstring#table['javascript.jsx'] = {
				\ 'jsComment' : '// %s',
				\ 'jsImport' : '// %s',
				\ 'jsxStatment' : '// %s',
				\ 'jsxRegion' : '{/*%s*/}',
				\}
endif

autocmd! BufRead,BufNewFile *.{jsx,jx,js} setlocal filetype=javascript.jsx


"Setting for tpope commenter
autocmd FileType apache setlocal commentstring=#\ %s
autocmd FileType javascript.jsx setlocal commentstring={/*\ %s\ */}
autocmd FileType javascript.jsx setlocal shiftwidth=2 tabstop=2
autocmd FileType javascript setlocal shiftwidth=2 tabstop=2


" use <tab> for trigger completion and navigate to the next complete item
function! CheckBackspace() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" inoremap <silent><expr> <Tab>
"       \ coc#pum#visible() ? coc#pum#next(1) :
"       \ CheckBackspace() ? "\<Tab>" :
"       \ coc#refresh()

"indent guides configuration
let g:indentguides_ignorelist = ['text']



"Settings for Tabs in neovim
:set mouse+=a
"mapping settings for tabs in neovim
" Move to previous/next
nnoremap <silent>    <A-,> :BufferPrevious<CR>
nnoremap <silent>    <A-.> :BufferNext<CR>
" Re-order to previous/next
nnoremap <silent>    <A-<> :BufferMovePrevious<CR>
nnoremap <silent>    <A->> :BufferMoveNext<CR>
" Goto buffer in position...
nnoremap <silent>    <A-1> :BufferGoto 1<CR>
nnoremap <silent>    <A-2> :BufferGoto 2<CR>
nnoremap <silent>    <A-3> :BufferGoto 3<CR>
nnoremap <silent>    <A-4> :BufferGoto 4<CR>
nnoremap <silent>    <A-5> :BufferGoto 5<CR>
nnoremap <silent>    <A-6> :BufferGoto 6<CR>
nnoremap <silent>    <A-7> :BufferGoto 7<CR>
nnoremap <silent>    <A-8> :BufferGoto 8<CR>
nnoremap <silent>    <A-9> :BufferLast<CR>
" Pin/unpin buffer
nnoremap <silent>    <A-p> :BufferPin<CR>
" Close buffer
nnoremap <silent>    <A-c> :BufferClose<CR>
" Wipeout buffer
"                          :BufferWipeout<CR>
" Close commands
"                          :BufferCloseAllButCurrent<CR>
"                          :BufferCloseAllButPinned<CR>
"                          :BufferCloseBuffersLeft<CR>
"                          :BufferCloseBuffersRight<CR>
" Magic buffer-picking mode
" nnoremap <silent> <C-s>    :BufferPick<CR>
" Sort automatically by...
nnoremap <silent> <Space>bb :BufferOrderByBufferNumber<CR>
nnoremap <silent> <Space>bd :BufferOrderByDirectory<CR>
nnoremap <silent> <Space>bl :BufferOrderByLanguage<CR>
nnoremap <silent> <Space>bw :BufferOrderByWindowNumber<CR>

" Other:
" :BarbarEnable - enables barbar (enabled by default)
" :BarbarDisable - very bad command, should never be used
"


"vim scripts
set tabstop=2
set softtabstop=2
set shiftwidth=2
set autoindent
set expandtab

"command for prettier
command! -nargs=0 Prettier :CocCommand prettier.formatFile

"Moving the line in upward direction
nnoremap <A-j> :m .+1<CR>==
nnoremap <A-k> :m .-2<CR>==
inoremap <A-j> <Esc>:m .+1<CR>==gi
inoremap <A-k> <Esc>:m .-2<CR>==gi
vnoremap <A-j> :m '>+1<CR>gv=gv
vnoremap <A-k> :m '<-2<CR>gv=gv


" Theme
syntax enable


"coc nvim settings
" let b:coc_diagnostic_disable = 1
" Attempt to disable and hide Coc diagnostics
" let b:coc_diagnostic_disable=1
" let b:coc_diagnostic_info={'information': 0, 'hint': 0, 'lnums': [0, 0, 0, 0], 'warning': 0, 'error': 0}
" stop CoC by default (but Coc is enabled)
" let g:coc_start_at_startup=0
" manually start CoC
nmap <leader>cc :<C-u>CocStart<CR>
" manually stop CoC
