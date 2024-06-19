call plug#begin(has('nvim') ? stdpath('data') . '/plugged' : '~/.vim/plugged')

" Declare the list of plugins.
Plug 'catppuccin/nvim', { 'as': 'catppuccin' }
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'preservim/nerdtree'
Plug 'ryanoasis/vim-devicons'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.5' }
Plug 'ThePrimeagen/vim-be-good'
Plug 'ryanoasis/vim-devicons'
Plug 'tpope/vim-fugitive'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
" List ends here. Plugins become visible to Vim after this call.
call plug#end()

set number
set ts=4 sw=4

" map ff to telescope find_files
nmap ff <cmd>Telescope find_files find_command=rg,--ignore,--hidden,--files prompt_prefix=🔍<cr>
inoremap <silent><expr> <cr> coc#pum#visible() ? coc#pum#confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"


" map Ctl + c to copy
vmap <C-c> "+y
nmap <C-c> "+y

" map Ctl + v to paste
imap <C-v> <esc>"+pa
nmap <C-v> "+p

" map Ctl + x to cut
vmap <C-x> "+d
nmap <C-x> "+d

" map Ctl + f to find
nmap <C-f> :NERDTreeToggle<CR>

" map Ctl + s to save
nmap <C-s> :w<CR>


nmap <c-w> <cmd>tabclose<cr>
nmap <c-n> <cmd>tabnew<cr>

colorscheme catppuccin " catppuccin-latte, catppuccin-frappe, catppuccin-macchiato, catppuccin-mocha


