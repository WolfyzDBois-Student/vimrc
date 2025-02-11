set nocompatible              " Désactive le mode compatible Vi
filetype off                  " Nécessaire pour Vundle

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Plugins à installer
Plugin 'VundleVim/Vundle.vim'   " Vundle lui-même
Plugin 'tpope/vim-sensible'     " Un bon ensemble de paramètres par défaut
Plugin 'preservim/nerdtree'
Plugin 'vim-syntastic/syntastic'

call vundle#end()              " Fin de la gestion des plugins
filetype plugin indent on      " Active la détection de type de fichier

" Activer la coloration syntaxique.
syntax on

" Utiliser backspace normalement.
set backspace=indent,eol,start

" Tabulation = 4 espaces.
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab

" Activer l'indentation.
filetype indent on

" Activer la souris pour le clic.
set mouse=a

" Enable auto completion menu after pressing TAB.
set wildmenu

" Make wildmenu behave like similar to Bash completion.
set wildmode=list:longest

" There are certain files that we would never want to edit with Vim.
" Wildmenu will ignore files with these extensions.
set wildignore=*.docx,*.jpg,*.png,*.gif,*.pdf,*.pyc,*.exe,*.flv,*.img,*.xlsx


" Ouvrir NERDTree automatiquement si aucun fichier n'est ouvert
autocmd VimEnter * if !argc() | NERDTree | endif

" Fermer Vim si NERDTree est le seul buffer ouvert
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" Définir un raccourci pour ouvrir/fermer NERDTree (par exemple, F2)
map <F2> :NERDTreeToggle<CR>

" Activer Syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

" Vérifier automatiquement les erreurs à l'enregistrement
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" Activer Syntastic
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" Configuration pour C#
let g:syntastic_cs_checkers = ['mcs']

" Configuration pour C/C++
let g:syntastic_c_checkers = ['gcc']
let g:syntastic_cpp_checkers = ['clang']
