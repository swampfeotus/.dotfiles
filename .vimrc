												"
"	~/.vimrc - lol bruh what am I doing?		"
"	Ver 2.1										"
"	swampfeotus@swampfeotus.org					"
"												"
"""""""""""""""""""""""""""""""""""""""""""""""""


"TODO: make a pretty directory for vim-which-key
"TODO: get mouse the right-click menu AND scroll one line AND click in a spot
"TODO: learn more about marks
"TODO: tab addon?



"""""""""""""""""""""""""""""""""""""""""""""""""
" VimPlug - handles plugins
"""""""""""""""""""""""""""""""""""""""""""""""""

" Install vim-plug if not found
if empty(glob('~/.vim/autoload/plug.vim'))
	silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
		\ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
endif

" Run PlugInstall if there are missing plugins
autocmd VimEnter * if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
	\| PlugInstall --sync | source $MYVIMRC
\| endif

" This is where to stick the Plugins
call plug#begin()
" The default plugin directory will be as follows:
"   - Vim (Linux/macOS): '~/.vim/plugged'

Plug 'preservim/nerdtree', { 'on': 'NERDTreeToggle' } " loads when using NerdTreeToggle
Plug 'liuchengxu/vim-which-key'                       " shows keybindings
Plug 'vim-airline/vim-airline'                        " statusline
Plug 'vim-airline/vim-airline-themes'                 " themes for airline
Plug 'preservim/nerdcommenter'                        " comment plugin
Plug 'dense-analysis/ale'                             " lint (not navel) and maybe LSP (aode fixin)
Plug 'godlygeek/tabular'                              " helps alight shit and make it pretty
Plug 'plasticboy/vim-markdown'                        " Markdown stuff and folding
Plug 'yggdroot/indentline'                            " pretty lines to show indent depth
Plug 'bling/vim-bufferline'                           " shows list of buffers on commandbar
Plug 'sheerun/vim-polyglot'							  " some kinda syntax thing

" Themes
Plug 'morhetz/gruvbox'
Plug 'dracula/vim', { 'as': 'dracula' } " the filename would be vim otherwise
Plug 'tomasr/molokai'
Plug 'TroyFletcher/vim-colors-synthwave'
Plug 'mr-ubik/vim-hackerman-syntax'
Plug 'ghifarit53/tokyonight-vim'

" Initialize plugin system
" - Automatically executes `filetype plugin indent on` and `syntax enable`.
call plug#end()
" You can revert the settings after the call like so:
"   filetype indent off   " Disable file-type-specific indentation
"   syntax off            " Disable syntax highlighting

"""""""""""""""""""""""""""""""""""""""
" Other Shit
""""""""""""""""""""""""""""""""""""""

if has("syntax")	" line enables syntax highlighting by default.
	syntax on
endif

" Uncomment the following to have Vim jump to the last position when
" reopening a file
"au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif

filetype plugin indent on	" automatically detect filetypes
filetype plugin on        " VimWiki needs"
"set notimeout		"***DO NOT ENABLE*** breaks vim-which-key
set autoindent		" indent at the same level of the previous line
set autoread		" automatically read a file changed outside of vim
set backspace=indent,eol,start	" backspace for dummies
set complete-=i		" exclude files completion
set display=lastline	" show as much as possible of the last line
set encoding=utf-8	" set default encoding
set history=10000	" maximum history record
set laststatus=2	" always show status line
set smarttab		" smart tab wtfever that means
set ttyfast			" faster redrawing (never have i thought it was slow)
set viminfo+=!		" viminfo include ! (wut?)
set wildmenu		" show list instead of just completing (when you tab complete a command)
set showmatch		" Show matching brackets.
set matchtime=5		" show match time
set ignorecase		" Do case insensitive matching
set smartcase		" Do smart case matching
set incsearch		" Incremental search
set hlsearch		" highlights search terms
set scrolljump=1	" lines to scroll when cursor leaves the screen
set scrolloff=3		" minimum lines to keep above and below the cursor (LOVE THIS)
"set nowrap			" do not wrap long lines (kinda prefer a softwrap)
set shiftwidth=4	" use indents of 4 spaces
set tabstop=4		" an indentation every four columns
set softtabstop=4	" let backspace delete indent
set splitright		" new vsplit to the right of current window
set splitbelow		" new split bottom of current window
set autowrite		" Automatically save before commands like :next and :make
set mousehide		" hide the mouse cursor when typing
set hidden			" allow buffer switching without saving
set ruler			" show the ruler ?
set showcmd			" show partial commands in status line and selected characters/in visual mode
set linespace=0		" no extra spaces between rows (only for GUI, bruh i dont gui)
set report=0		" always report line changed lines
"set mouse=a		" Enable mouse usage (all modes) (wont let me right click)
set mouse=r			" This lets me rught click in term (but not click where cursor goes)
"set mouse=v		" alternate option, for some vimrc's
set ttymouse=xterm2	" No clue?

set nocompatible  " I dont know wtf this does but apparently i need it for VimWiki
"

" Enable true color 启用终端24位色
if exists('+termguicolors')
  let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
  let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
  set termguicolors
endif

"--------------------------------------------------
"set termguicolors

" This is only necessary if you use "set termguicolors".
"let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
"let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"

" fixes glitch? in colors when using vim with tmux
"set background=dark
"set t_Co=256
"------------------------
"set t_Co=256		" use 256 colors
set cursorline		" highlights line cursor in on
set number			" show line numbers
"set relativenumber	" enable relative numbers
set colorcolumn=80	" shows a column on row 80
" These two lines are incase the default theme settings make these parts ugly
"highlight ColorColumn ctermbg=0 guibg=lightgrey
"highlight LineNr ctermfg=DarkGrey

" Still need to mess with this, its not behaving like i think it should
set clipboard=unnamed




"""""""""""""""""""""""""""""""
" Pluggin settings
"""""""""""""""""""""""""""""""

let g:airline_powerline_fonts = 1	" lets airline know I have patched fonts

" Allow commenting and inverting empty lines (useful when commenting a region)
let g:NERDCommentEmptyLines = 1
" Enable trimming of trailing whitespace when uncommenting
let g:NERDTrimTrailingWhitespace = 1

" plugin indentline - changing to a viduall better icon
let g:indentLine_char = ''

" vim-which-key settings
nnoremap <silent> <leader> :WhichKey '<Space>'<CR>
set timeoutlen=500


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" trying to figure out vim-which-key

" THis part seems corrent
let g:mapleader = "\<space>"
let g:maplocalleader = ','
nnoremap <silent> <leader>      :<c-u>WhichKey '<Space>'<CR>
vnoremap <silent> <leader>		:<c-u>WhichKeyVisual '<Space>'<CR>
nnoremap <silent> <localleader> :<c-u>WhichKey ','<CR>
nnoremap <silent> <localleader> :<c-u>WhichKeyVisual ','<CR>

call which_key#register('<Space>', "g:which_key_map")


" Define prefix dictionary

let g:which_key_map =  {}

" Second level dictionaries:
" 'name' is a special field. It will define the name of the group, e.g., leader-f is the "+file" group.
" Unnamed groups will show a default empty string.

" =======================================================
" Create menus based on existing mappings
" =======================================================
" You can pass a descriptive text to an existing mapping.

" = Files
let g:which_key_map.f = { 'name' : '+file' }
nnoremap <silent> <Leader>fs :update<CR>
let g:which_key_map.f.s = 'save-file'
nnoremap <silent> <leader>fd :e $MYVIMRC<CR>
let g:which_key_map.f.d = 'open-vimrc'
nnoremap <silent> <leader>fr :source ~/.vimrc<CR>
let g:which_key_map.f.r = 'source .vimrc'
nnoremap <silent> <leader>fn :e notes<CR>
let g:which_key_map.f.n = 'open notes file'
" = NERDComment
let g:which_key_map.c = { 'name' : '+NERDComment' }

" =======================================================
" " Create menus not based on existing mappings:
" " =======================================================
" " Provide commands(ex-command, <Plug>/<C-W>/<C-d> mapping, etc.)
" " and descriptions for the existing mappings.
" "
" " Note:
" " Some complicated ex-cmd may not work as expected since they'll be
" " feed into `feedkeys()`, in which case you have to define a decicated
" " Command or function wrapper to make it work with vim-which-key.
" " Ref issue #126, #133 etc.

nnoremap <leader>; :bnext<CR>
"let g:which_key_map = {';' : 'Next Buffer'}

let g:which_key_map.b = {
	      \ 'name' : '+buffer' ,
      \ '1' : ['b1'        , 'buffer 1']        ,
      \ '2' : ['b2'        , 'buffer 2']        ,
      \ 'd' : ['bd'        , 'delete-buffer']   ,
      \ 'f' : ['bfirst'    , 'first-buffer']    ,
      \ 'h' : ['Startify'  , 'home-buffer']     ,
      \ 'l' : ['blast'     , 'last-buffer']     ,
      \ 'n' : ['bnext'     , 'next-buffer']     ,
      \ 'p' : ['bprevious' , 'previous-buffer'] ,
      \ '?' : ['Buffers'   , 'fzf-buffer']      ,
	  \ 'L' : ['ls'        , 'list buffers']    ,
	  \ }

let g:which_key_map['w'] = {
	      \ 'name' : '+windows' ,
      \ 'w' : ['<C-W>w'         , 'other-window']          ,
      \ 'd' : ['<C-W>c'         , 'delete-window']         ,
      \ '-' : ['<C-W>s'         , 'split-window-below']    ,
      \ '|' : ['<C-W>v'         , 'split-window-right']    ,
      \ '2' : ['<C-W>v'         , 'layout-double-columns'] ,
      \ 'h' : ['<C-W>h'         , 'window-left']           ,
      \ 'j' : ['<C-W>j'         , 'window-below']          ,
      \ 'l' : ['<C-W>l'         , 'window-right']          ,
      \ 'k' : ['<C-W>k'         , 'window-up']             ,
      \ 'H' : ['<C-W>5<'        , 'expand-window-left']    ,
      \ 'J' : [':resize +5'     , 'expand-window-below']   ,
      \ 'L' : ['<C-W>5>'        , 'expand-window-right']   ,
      \ 'K' : [':resize -5'     , 'expand-window-up']      ,
      \ '=' : ['<C-W>='         , 'balance-window']        ,
      \ 's' : ['<C-W>s'         , 'split-window-below']    ,
      \ 'v' : ['<C-W>v'         , 'split-window-below']    ,
      \ '?' : ['Windows'        , 'fzf-window']            ,
      \ }

let g:which_key_map['p'] = {
	      \ 'name' : '+VimPlug' ,
      \ 'i' : [':PlugInstall'   , 'Install Plugs']   ,
      \ 'u' : [':PlugUpdate'    , 'Update Plugs']    ,
      \ 'c' : [':PlugClean'     , 'Remove Plugs']    ,
      \ 'U' : [':PlugUpgrade'   , 'Upgrade Vimplug'] ,
      \ 'S' : [':PlugStatus'    , 'Status']          ,
      \ 'D' : [':PlugDiff'      , 'Diff']            ,
      \ }

" keymaps for previous part
"nnoremap <Leader>ww <C-W>w<CR>
"nnoremap <Leader>wd <C-W>c<CR>




""""""""""""""""""""""""""""""""""""""""
" custom keybindings
"""""""""""""""""""""""""""""""""""""""

noremap <Leader>t :NERDTreeToggle<CR>
noremap <LocalLeader>t :NERDTreeToggle<CR>
nmap <F2> :NERDTreeToggle<CR>

nnoremap <leader>s0 :set laststatus=0<CR>
nnoremap <leader>s2 :set laststatus=2<CR>

"nnoremap <leader>; :bnext<CR>
"let g:which_key_map = {';' : 'Next Buffer'}

" TODO keymaps for ale
" TODO keymaps for tabularize
" TODO keymaps for markdown-syntax
" TODO keymaps for indentline (:IndentLineToggle)
" TODO keymaps for tabs (:tabn :tabb :tabe <filepath> etc)
		" apparently gt and gT go next and back in tabs
		" ngt where n is the index of the tab will go directly to it?
		" make sure theres keymaps for multiple numbers
		" :h tab-page-commands
" TODO keymaps for buffers (:ls lists open buffers)
" TODO keymaps for h: spell
" TODO make it also work for visual mode?

""""""""""""""""""""""""""""""""""""""
" Themes
""""""""""""""""""""""""""""""""""""

" If using a dark background within the editing area and syntax highlighting
" turn on this option as well
set background=dark
"set background=light

"let g:gruvbox_contrast_dark = 'medium'	" options are soft, medium, and hard
"autocmd vimenter * ++nested colorscheme gruvbox
"autocmd vimenter * ++nested colorscheme dracula
"autocmd vimenter * ++nested colorscheme molokai

"autocmd vimenter * ++nested colorscheme synthwave
"autocmd vimenter * ++nested colorscheme hackerman
"autocmd vimenter * ++nested colorscheme dracula
"colorscheme dracula

" TOKYONIGHT theme - more options available, check docs
let g:tokyonight_style = 'night' " available: night, storm
let g:tokyonight_enable_italic = 1
let g:tokyonight_transparent_background = 1	" 0 = off, 1 = on, default: 0
let g:tokyonight_menu_selection_background = 'green' " green, red, blue. default: green
colorscheme tokyonight


" vim-airline themes - set default here but can use :AirlineTheme <theme> to
" try new ones
" let g:airline_theme='<theme>'
" let g:airline_theme='base16>'
" let g:airline_theme='violet'
"let g:airline_theme='cyberpunk'
let g:airline_theme = 'tokyonight'
