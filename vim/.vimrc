let mapleader="\<Space>"
syntax on

call plug#begin('~/.vim/plugged')
Plug 'morhetz/gruvbox'
Plug 'sheerun/vim-polyglot'
Plug 'preservim/nerdtree'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'elixir-editors/vim-elixir'
Plug 'slashmili/alchemist.vim'
Plug 'itchyny/lightline.vim'
Plug 'chriskempson/base16-vim'
call plug#end()

set bg=dark
set number

"colorscheme base16-gruvbox-dark-hard

highlight Pmenu ctermbg=238 gui=bold

set colorcolumn=100
set mouse=a
set laststatus=2

nnoremap <left> :bp<cr>
nnoremap <right> :bn<cr>

let g:fzf_layout = { 'down': '~20%'}
noremap <C-f> :FZF<cr>

nmap <leader>; :Buffers<cr>
"Use 24-bit (true-color) mode in Vim/Neovim when outside tmux.
""If you're using tmux version 2.2 or later, you can remove the outermost $TMUX check and use tmux's 24-bit color support
"(see < http://sunaku.github.io/tmux-24bit-color.html#usage > for more "information.)
if (empty($TMUX))
  "For Neovim > 0.1.5 and Vim > patch 7.4.1799 < https://github.com/vim/vim/commit/61be73bb0f965a895bfb064ea3e55476ac175162 >
  "Based on Vim patch 7.4.1770 (guicolors option) < https://github.com/vim/vim/commit/8a633e3427b47286869aa4b96f2bfc1fe65b25cd >
  " < https://github.com/neovim/neovim/wiki/Following-HEAD#20160511 >
  if (has("termguicolors"))
"    set termguicolors
  endif
endif
