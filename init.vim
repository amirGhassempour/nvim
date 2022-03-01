" DEFAULT NVIM SETTINGS
" changing the default colorscheme to industry.
colorscheme industry
" setting numbers at the beginning of the lines.
set number



" PLUGIN MANAGER SETTINGS
" VIM-PLUG, plugin manager.
" Setting up the vim-plug as nvim plugin manager:
" download plug.vim from 'https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim' and put it in autoload directory
" use ':h auto-directories' to learn more about nvim default directories.
" use ':PlugInstall' or ':PlugClean' after each time you modify the section
" bellow.

" beginning the call of vim-plug plugin manager.
call plug#begin('/home/amir/.local/share/nvim/site/plugged')

" installing nerdtree to work with directories
" use ':h NERDTree' to learn more.
  Plug 'preservim/nerdtree'

" installing coc for snippet
  Plug 'neoclide/coc.nvim'

" installing bash-support for its Bash IDE.
"  Plug 'vim-scripts/bash-support.vim'

" installing vim-fugitive to work with git.
"  Plug 'tpope/vim-fugitive'

" installing supertab for its bash style tab autocomplete.
" use ':h supertab' to find more.
  Plug 'ervandew/supertab'

" installing vim-dict for dictionary
" use command :Dict to look up the selected word.
  Plug 'szw/vim-dict'

" installing vim-floaterm to open terminal in vim.
  Plug 'voldikss/vim-floaterm'

" installing syntastic for unknown reason.
  Plug 'vim-syntastic/syntastic'

" installing YouCompleteMe for unknown reason.
"  Plug 'ycm-core/YouCompleteMe'

" installing ale for linting and language server.
" you have to install your language server. I did "pip install bashate".
  Plug 'dense-analysis/ale'

" installing auto-pairs to add the second surrouding automatically.
" use ':h autopairs' to learn more.
  Plug 'jiangmiao/auto-pairs'

" installing vim-surround a tool for dealing with pairs of surroundings.
" more complex than vim-sandwitch but it is good for dealing with html tags.
" this plugin is only available if 'compatible' is not set.
  Plug 'tpope/vim-surround'

" installing vim-sandwich to add, delete and replace surroundings of a
" sandwitched textobject; like: (foo), <bar>
" use ':h sandwich' to learn more
  Plug 'machakann/vim-sandwich'

" installing nerdcommenter
" provides many different commenting operations and styles which are invoked via key mappings and a menu.
" use :h nerdcommenter to find out more about nerdcommenter
" make sure that you have filetype plugin enabled using: filetype plugin on
  Plug 'preservim/nerdcommenter'

" installing fzf or fuzzy finder to find and preview files in all directories
" simply type ':Files', ':GFiles', ':Windows' or ':Colors' to use.
" there is another section about the settings of this plugin.
" search '/fzf' to find it.
  Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
  Plug 'junegunn/fzf.vim'

" installing vim-airline for a pretty statusbar.
" use ':h airline' to find more
  Plug 'vim-airline/vim-airline'
  Plug 'vim-airline/vim-airline-themes'

" ending the call of vim-plug
call plug#end()


" NERDTree, Directory Tree Settings:
" mapping the <C-n> to the command :NERDTree
map <silent> <C-n> :NERDTree<CR>
" setting an statusline for nerdtree
let g:NERDTreeStatusLine = 1

" ALE, Language Server, Linting Settings:
" mapping the <C-e>
nmap <silent> <C-e> <Plug>(ale_next_wrap)
filetype plugin indent on


" Floaterm, Terminal Setting:
" setting the shortcut <F12> to toggle between the floaterm 
let g:floaterm_keymap_toggle = '<F12>'
" setting default vim popupwin or nvim floatwin to splited window
let g:floaterm_wintype= 'split'
" setting the height of the terminal
let g:floaterm_height = 15


" fzf, Fuzzy Finder, File Finder, Settings:
" making the float window go to the bottom of the screen instead
let g:fzf_layout = { 'down': '~40%' } 
" I want to make the preview window of fuzzy finder hidden and set the
" shortcut 'ctrl-/' to toggle between hidden and show
let g:fzf_preview_window = ['up:80%:hidden', 'ctrl-/']


" Airline, Statusbar Settings:
" detecting other parts of airline
let g:airline_detect_spelllang = 1
let g:airline_detect_paste = 1
" changing airline theme
"let g:airline_theme = 'raven'
"let g:airline_theme = 'term'
let g:airline_theme = 'bubblegum'
" configuring airline symbols:
if !exists('g:airline_symbols')
    let g:airline_symbols = {}
  endif
let g:airline_symbols.colnr = ' col:'
let g:airline_symbols.crypt = '🔒'
let g:airline_symbols.linenr = ' ln('
let g:airline_symbols.maxlinenr = ')tl '
let g:airline_symbols.branch = '⎇'
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.spell = 'Ꞩ'
let g:airline_symbols.notexists = 'Ɇ'
let g:airline_symbols.whitespace = 'Ξ'



" setting the background color:
highlight Normal ctermfg=NONE ctermbg=NONE
