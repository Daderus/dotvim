""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Maintainer:
"       Heiko Klausing
"       http://www.hmkf.ed - [h.klausing@gmx.de]
"
"           Based on Amir Salihefendic, http://amix.dk/vim/vimrc.html
"
" Version:
"       1.1.2 - 2016-05-28
"
" Blog_post:
"       -
"
" Awesome_version:
"       Get this config, nice color schemes and lots of plugins!
"
"       Install the awesome version from:
"
"           https://github.com/amix/vimrc
"
" Syntax_highlighted:
"       http://amix.dk/vim/vimrc.html
"
" Raw_version:
"       http://amix.dk/vim/vimrc.txt
"
" Sections:
"    -> General
"    -> VIM user interface
"    -> Colors and Fonts
"    -> Files and backups
"    -> Text, tab and indent related
"    -> Visual mode related
"    -> Moving around, tabs and buffers
"    -> Status line
"    -> Editing mappings
"    -> Function key mappings
"    -> Template handling
"    -> Spell checking
"    -> Plugin Settings
"    -> Misc
"    -> Helper functions
"
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""



"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => General
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Sets how many lines of history VIM has to remember
  set history=700

" Set to auto read when a file is changed from the outside
  set autoread

" With a map leader it's possible to do extra key combinations
" like <leader>w saves the current file
  let   mapleader = ","
  let g:mapleader = ","

" Fast saving single file
  nmap <leader>w :w!<cr>

" Fast saving all files
  nmap <leader>wa :wa!<cr>




"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Plugin manager
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" check if Vundle is available before it can be used.
  if !empty(glob("~/.vim/bundle/Vundle.vim/autoload/vundle.vim"))
    " Install plugins   :PluginInstall
    " Show help         :h vundle

    " Set 'nocompatible' to ward off unexpected things that your distro might
    " have made, as well as sanely reset options when re-sourcing .vimrc
      set nocompatible              " This is required
      filetype off                  " This is required

    " Here you set up the runtime path
      set rtp+=~/.vim/bundle/Vundle.vim

    " Initialize vundle
      call vundle#begin()

    " This should always be the first
      Plugin 'gmarik/Vundle.vim'

    " Plugin from http://vim-scripts.org/vim/scripts.html
    " Required for vim-fugitive
      Plugin 'L9'

    " This examples are from https://github.com/gmarik/Vundle.vim README
    " Help: fugitive
       Plugin 'tpope/vim-fugitive'

    " Sparkup lets you write HTML code faster
    " Usage: <Ctrl>e    in a .html file
     "Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}

    " Solarized Colorscheme for Vim Description
      Plugin 'altercation/vim-colors-solarized'


    " *****************************
    " *** Status line format
    " *****************************
    "Every Plugin should be before this line
    "
    " status/tabline for vim without Python.
    " Help: airline
"     Plugin 'bling/vim-airline'
      Plugin 'vim-airline/vim-airline'
"     Plugin 'vim-airline/vim-airline-themes'


    " *****************************
    " *** Test navigation and
    " *** modification
    " *****************************

    " tcomment provides easy to use, file-type sensible comments for
    " Vim. It can handle embedded syntax.
    " Usage: <v>gc or gcc
    " Help: tcomment
      Plugin 'tomtom/tcomment_vim'

    " 'surroundings': parentheses, brackets, quotes, XML tags, and more
    " Usage: cs"', ds', ...
    " Help: surround
      Plugin 'tpope/vim-surround'

    " Graph your Vim undo tree in style.
    " Usage: F6
    " Help:
      Plugin 'sjl/gundo.vim'



    " *****************************
    " *** file/directory navigation
    " *****************************
    "
Plugin 'jeetsukumaran/vim-buffergator'


    " Full path fuzzy file, buffer, mru, tag, ... finder for Vim.
    " Usage: <Ctrl>p
    " Help: ctrlp
      Plugin 'ctrlpvim/ctrlp.vim'

    " Followed by: http://vimawesome.com/
    " The NERD tree allows you to explore your file system and to open files and directories
    " Usage: <Ctrl>n
    " Help:
      Plugin 'scrooloose/nerdtree'


    " *****************************
    " *** Search helpers
    " *****************************

    " Run your favorite search tool from Vim, with an enhanced results list.
    " Usage: :Ack pattern
    " Help: ack
      Plugin 'mileszs/ack.vim'


    " *****************************
    " *** Helper functions
    " *****************************

"   " Solarized Colorscheme for Vim Description
"     Plugin 'altercation/vim-colors-solarized'

    " line up text
    " Usage:  :'<,'>Tabularize /=
    " Help: tabular
"     Plugin 'godlygeek/tabular'

    " A simple, easy-to-use Vim alignment plugin.
    " Usage: vipga=
    " Help EasyAlign
      Plugin 'junegunn/vim-easy-align'

"   " Convenient ways to quickly reach the buffer/file/command/bookmark/tag
"   " Usage: fuff abc
"   " <C-P> -> select a file -> <C-T> open file in new tab
"   "          -             -> <CR> open file in current tab
"   "          -             -> <C-V> open file in vertical-split window
"   " Help: fuzzyfinder
"     Plugin 'FuzzyFinder'
"     Plugin 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }

    " Auto completion
    " Usage: type text and press <TAB>
    " Help: supertab
"     Plugin 'ervandew/supertab'
     "Plugin 'Valloric/YouCompleteMe'

    " Integrates the grep, fgrep, egrep, and agrep tools
    " Usage: Bgrep [-i] pattern
    " Help: see bundle/grep/plugin/grep.vim
      Plugin 'yegappan/grep'

    " causes all trailing whitespace characters (spaces and tabs) to be highlighted
    " Usage:
    " Help:
      Plugin 'ntpeters/vim-better-whitespace'


    " *****************************
    " Development related plugins
    " *****************************

    " Syntax checking hacks for vim
    " Usage:
    " Help:
     "Plugin 'scrooloose/syntastic'

    " Interface to perldoc. you can get perldoc with integrated operation for vim.
    " Usage: select word and press K
    " Help:
      "Plugin 'hotchpotch/perldoc-vim'

    " Ruby support for Vim/gVim.
    " Usage: show help with h vim-ruby
    " Help:
     "Plugin 'perl-support.vim'

    "
    " Usage:
    " Help:
     "Plugin 'vim-ruby/vim-ruby'


    " End of plugin definitions for vundle
      call vundle#end()           " required

  endif






"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => VIM user interface
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Enable filetype plugins
  filetype plugin on
  filetype indent on


" Set 7 lines to the cursor - when moving vertically using j/k
  set so=7

" Search down into subfolders. Provides tab-completion for all
" file-related tasks.
  set path+=./**

" Turn on the Wild menu
  set wildmenu

" Ignore compiled files
  set wildignore=*.o,*~,*.pyc

" Always show current position
  set ruler

" Height of the command bar
  set cmdheight=2

" A buffer becomes hidden when it is abandoned
  set hid

" Configure backspace so it acts as it should act
  set backspace=eol,start,indent
  set whichwrap+=<,>,h,l

" Ignore case when searching
  set ignorecase

" When searching try to be smart about cases
  set smartcase

" Highlight search results
  set hlsearch

" Makes search act like search in modern browsers
  set incsearch

" Don't redraw while executing macros (good performance config)
  set lazyredraw

" For regular expressions turn magic on
  set magic

" Show matching brackets when text indicator is over them
  set showmatch

" How many tenths of a second to blink when matching brackets
  set matchtime=2

" No annoying sound on errors
  set noerrorbells
  set novisualbell
  set t_vb=
  set timeoutlen=750          " timeout after <leader>

" Enable mouse usage (all modes: tabs selection, text selection, text scrolling)
  if has("mouse")
    set mouse=a
    set ttymouse=xterm2
  endif

" new
" share windows clipboard
  set clipboard+=unnamed

" Show line numbers at startup with relative numbers, current line number is absolute
  set number
  set relativenumber




"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Colors and Fonts
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Enable syntax highlighting
  syntax enable

" use 256 colors
  set t_Co=256

" set background color to the default value dark
  set background=dark

" color handling if altercation/vim-colors-solarized is loaded
  if !empty(glob("~/.vim/bundle/vim-colors-solarized/colors/solarized.vim"))

    if has("gui_running")
        let g:solarized_termcolors  = 256
        let g:solarized_termtrans   = 1
        let g:solarized_degrade     = 1
        let g:solarized_bold        = 0
        let g:solarized_underline   = 0
        let g:solarized_italic      = 0
        let g:solarized_contrast    = "normal"
        let g:solarized_visibility  = "high"
        let g:solarized_hitrail     = 1
        let g:solarized_menu        = 0
    else
        let g:solarized_termcolors  = 256
        let g:solarized_termtrans   = 1
        let g:solarized_degrade     = 1
        let g:solarized_bold        = 0
        let g:solarized_underline   = 0
        let g:solarized_italic      = 0
        let g:solarized_contrast    = "normal"
        let g:solarized_visibility  = "high"
        let g:solarized_hitrail     = 1
        let g:solarized_menu        = 0
    end

    " define colorscheme
     "let g:solarized_termcolors=256
      colorscheme solarized

  else

    " set these settings if vim-colors-sloarized is not found
      colorscheme mustang         " background is handled by scheme

  endif

" session default font values
  let s:defaultfontsize = 11
  let s:minfontsize = 5
  let s:maxfontsize = 48

" related functions

"
" Font size scaling
"
  function! EnlargeFont()
    let l:font=split( &guifont )
    if l:font[-1] < s:maxfontsize
        let l:font[-1] = l:font[-1] + 1
        let &guifont=join( l:font, ' ' )
    endif
  endfunction

  function! ShrinkFont()
    let l:font=split( &guifont )
    if l:font[-1] > s:minfontsize
        let l:font[-1] = l:font[-1] - 1
        let &guifont=join( l:font, ' ' )
    endif
  endfunction

  function! SetDefaultFontSize()
    let l:font=split( &guifont )
    let l:font[-1] = s:defaultfontsize
    let &guifont=join( l:font, ' ' )
  endfunction


" Set extra options when running in GUI mode
  if has("gui_running")
    " Set gvim window size
      set lines=50 columns=128

    "
      set guioptions-=T           " no toolbar
      set guioptions-=e           " disable GUI-tabs

      if has("gui_gtk2")
         "echo "GUI-Type: gui_gtk2"
          let font = {"name" : "Hack", "size" : s:defaultfontsize }
         "let font = {"name" : "DejaVu Sans Mono", "size" : s:defaultfontsize }
          let &guifont=join(values(font))
      elseif has("gui_photon")
         "echo "GUI-Type: gui_photon"
          set guifont=Courier\ New:s11
      elseif has("gui_kde")
         "echo "GUI-Type: gui_kde"
          set guifont=Courier\ New/11/-1/5/50/0/0/0/1/0
      elseif has("x11")
         "echo "GUI-Type: x11"
          "set guifont=-*-courier-medium-r-normal-*-*-180-*-*-m-*-*
          "set guifont=Courier\ New
      else
         "echo "GUI-Type: ???"
          "set guifont=Courier_New:h11:cDEFAULT
      endif

  endif




"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Files, backups and undo
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Set utf8 as standard encoding and en_US as the standard language
  set encoding=utf8

" Use Unix as the standard file type
  set fileformats=unix,dos,mac

" Turn backup off, since most stuff is in SVN, git et.c anyway...
  set nobackup
  set nowritebackup
  set noswapfile




"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Text, tab and indent related
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Use spaces instead of tabs
  set expandtab

" Be smart when using tabs ;)
  set smarttab

" 1 tab == 4 spaces
  set shiftwidth=4
  set tabstop=4

" Linebreak on 500 characters
  set linebreak       " split lines on whitespaces only
  set textwidth=500   " 0 => not auto-insert line braks, but keep line wrapping

  set autoindent      " Auto indent
  set smartindent     " Smart indent
  set wrap            " Wrap lines




"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Visual mode related
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Visual mode pressing * or # searches for the current selection
" Super useful! From an idea by Michael Naumann
  vnoremap <silent> * :call VisualSelection('f')<CR>
  vnoremap <silent> # :call VisualSelection('b')<CR>




"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Moving around, tabs, windows and buffers
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Treat long lines as break lines (useful when moving around in them)
  map j           gj
  map k           gk

" Map <Space> to / (search) and Ctrl-<Space> to ? (backwards search)
  map <space>     /
  map <c-space>   ?

" Disable highlight when <leader><cr> is pressed
  map <silent> <leader><cr> :noh<cr>

" Close the current buffer
  map <leader>bd  :Bclose<cr>

" Close all buffers
  map <leader>ba  :1,1000 bd!<cr>

" Useful mappings for managing tabs
  map <leader>tn  :tabnew<cr>
  map <leader>to  :tabonly<cr>
  map <leader>tc  :tabclose<cr>
  map <leader>tm  :tabmove

" Opens a new tab with the current buffer's path
" Super useful when editing files in the same directory
  map <leader>te  :tabedit <c-r>=expand("%:p:h")<cr>/

" Switch CWD to the directory of the open buffer
  map <leader>cd  :cd %:p:h<cr>:pwd<cr>

" Specify the behavior when switching between buffers
  try
    set switchbuf=useopen,usetab,newtab
    set showtabline=2
  catch
  endtry

" Return to last edit position when opening files (You want this!)
  autocmd BufReadPost *
     \ if line("'\"") > 0 && line("'\"") <= line("$") |
     \   exe "normal! g`\"" |
     \ endif

" Remember info about open buffers on close
  set viminfo^=%

" makes changes to files that have read-only permissions for current user/group
  cmap w!! %!sudo tee > /dev/null %

" Shortcut for FuzzyFinder
  map <leader>f :FufFile<cr>


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Status line
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Always show the status line
  set laststatus=2

" Format the status line
  if !exists("g:loaded_airline")
    " Airline not loaded
    " jamessan's
      set statusline=   " clear the statusline for when vimrc is reloaded
      set statusline+=%-3.3n\                      " buffer number
      set statusline+=%f\                          " file name
      set statusline+=%h%m%r%w                     " flags
      set statusline+=[%{strlen(&ft)?&ft:'none'},  " filetype
      set statusline+=%{strlen(&fenc)?&fenc:&enc}, " encoding
      set statusline+=%{&fileformat}]              " file format
      set statusline+=%=                           " right align
      set statusline+=%b,0x%-8B\                   " current char
      set statusline+=%-14.(%l,%c%V%)\ %<%P        " offset

  else
    " Airline loaded

"   let g:airline#extensions#tabline#enabled = 1
      let g:airline_theme = "dark"

    " Show buffer number
      let g:airline_section_y = 'BN:%{bufnr("%")}'

    " Settings for bling/vim-airline
"     let g:airline_powerline_fonts = 1

    " Smarter tab line
      let g:airline#extensions#tabline#enabled = 1

     if !exists('g:airline_symbols')
       let g:airline_symbols = {}
     endif
     let g:airline_symbols.space = "\ua0"

  end




"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Editing mappings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Move a line up/down
  nnoremap <A-j> :m .+1<CR>==
  nnoremap <A-k> :m .-2<CR>==
  inoremap <A-j> <Esc>:m .+1<CR>==gi
  inoremap <A-k> <Esc>:m .-2<CR>==gi

" Move selected lines up/down
  vnoremap <A-j> :m '>+1<CR>gv=gv
  vnoremap <A-k> :m '<-2<CR>gv=gv

" Delete trailing white space on save, useful for Python and CoffeeScript ;)
  func! DeleteTrailingWS()
    exe "normal mz"
    %s/\s\+$//ge
    exe "normal `z"
  endfunc
  autocmd BufWrite *.py :call DeleteTrailingWS()
  autocmd BufWrite *.coffee :call DeleteTrailingWS()

" Quickly edit the vimrc file in an existing tab
  nmap <silent> <leader>Ev :edit $MYVIMRC<CR>

" Quickly edit the vimrc file in a new tab
  nmap <silent> <leader>ev :tabedit $MYVIMRC<CR>

" Quickly source the vimrc file
  nmap <silent> <leader>sv :source $MYVIMRC<CR>

" Fast saving
  nmap <leader>w :w!<cr>

" Fast saving all tabs
  nmap <leader>W :wa!<cr>




"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Function key mappings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"       Norm            Shift           Ctrl    Alt
" F1    help            -               help    -
" F2    folding         -               -       -
" F3    V-split         H-split         -       -
" F4    toggle_matches  -               -       -
" F5    toggle_line_no  toggle_paste    -       SpellCheck
" F6    gundo           -               -       -
" F7    -               -               -       -
" F8    -               -               -       -
" F9    -               toggle_bg_color -       -
" F10   trim_spaces     -               -       -
" F11   -               -               -       -
" F12   show_spaces     -               -       -

"
" folding
  inoremap <F2>       <C-O>za
  nnoremap <F2>       za
  onoremap <F2>       <C-C>za
  vnoremap <F2>       zf

" open vertical explorer window
       map <F3>       	:Vexplore<cr>
       map <s-F3>     	:Hexplore<cr>

" toggle highlighted matches
      nmap <F4>       	:set hls! <cr>
" hit '/' highlights then enter search mode
  nnoremap /         	:set hlsearch<cr>/

" Toggle line number
  nnoremap <F5>      	:call NumberToggle()<cr>
  inoremap <F5> <ESC>	:call NumberToggle()<cr>i
  vnoremap <F5> <ESC>	:call NumberToggle()<cr>gv

" hit F11 to paste
  set pastetoggle=<S-F5>

" Toggle spellcheck
  nnoremap <A-F5>       :setlocal spell! spelllang=en_us<CR>

" Toggle trailing white-spaces
  nnoremap <F10>     	:ToggleWhitespace<CR>

" Trim trailing spaces
  nnoremap <S-F10>   	:StripWhitespace<CR>


"
" Font size change
" ... increase font size
  inoremap <C-kPlus><ESC>:call EnlargeFont()<CR>i
  nnoremap <C-kPlus>  	:call EnlargeFont()<CR>

" ... decrease font size
  inoremap <C-kMinus><ESC>:call ShrinkFont()<CR>i
  nnoremap <C-kMinus> 	:call ShrinkFont()<CR>

" ... set font size to default value
  inoremap <C-k0><ESC>	:call SetDefaultFontSize()<CR>i
  nnoremap <C-k0>     	:call SetDefaultFontSize()<CR>



"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Template handling
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" define the template names
  autocmd BufNewFile * silent! 0r ~/.vim/templates/%:e.template

" Create the 'tags' file (may need to install ctags first!)
  command! MakeTags     !ctags -R .

" Tweaks for file browsing
  let g:netrw_banner = 0        " disable annoying banner
  let g:netrw_browse_split = 4  " open in prior window
  let g:netrw_altv = 1          " open splits to the right
  let g:netrw_liststyle = 3     " tree view
  let g:netrw_list_hide = netrw_gitignore#Hide()
  let g:netrw_list_hide .= ',\(^\|\s\s\)\zs\.\S\+'
" NOW WE CAN:
" - :edit a folder to open a file browser
"    - <CR>/v/t to open in an h-split/v-split/tab
" - check |netrw-browse-maps| for more mappings





"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Spell checking
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Pressing ,ss will toggle and untoggle spell checking
  map <leader>ss      	:setlocal spell!<cr>

" Shortcuts using <leader>
  map <leader>sn      ]s
  map <leader>sp      [s
  map <leader>sa      zg
  map <leader>s?      z=




"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Plugin Settings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Mappings for NERTDTree
  map <C-n>   			:NERDTreeToggle<cr>

" Syntastic
  let g:syntastic_always_populate_loc_list = 1
  let g:syntastic_auto_loc_list = 1
  let g:syntastic_check_on_open = 1
  let g:syntastic_check_on_wq = 0

" mileszs/ack.vim
  if executable('ack')
    let g:ackprg="ack -H --nocolor --nogroup --column"
  endif

  "
  if !empty(glob("~/.vim/bundle/vim-colors-solarized/colors/solarized.vim"))
    " vim-colors-solarized
      call togglebg#map("<F9>")
      noremap <s-F9> 	:set list!<cr>
  end

" Looks up Perl command under cursor when K is pressed
  set keywordprg=perldoc\ -f

" Setting for EasyAlign
" Start interactive EasyAlign in visual mode (e.g. vipga)
  xmap ga <Plug>(EasyAlign)
" Start interactive EasyAlign for a motion/text object (e.g. gaip)
  nmap ga <Plug>(EasyAlign)

" gundo
  nnoremap <F6> :GundoToggle<CR>



"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Misc
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Remove the Windows ^M - when the encodings gets messed up
  noremap <Leader>m     mmHmt:%s/<C-V><cr>//ge<cr>'tzt'm

" Quickly open a buffer for scribble
      map <leader>q     :e ~/buffer<cr>

"" Toggle paste mode on and off
"      map <leader>pp    :setlocal paste!<cr>




"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Helper functions
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
function! CmdLine(str)
    exe "menu Foo.Bar :" . a:str
    emenu Foo.Bar
    unmenu Foo
endfunction


"""
function! VisualSelection(direction) range
    let l:saved_reg = @"
    execute "normal! vgvy"

    let l:pattern = escape(@", '\\/.*$^~[]')
    let l:pattern = substitute(l:pattern, "\n$", "", "")

    if a:direction == 'b'
        execute "normal ?" . l:pattern . "^M"
    elseif a:direction == 'gv'
        call CmdLine("vimgrep " . '/'. l:pattern . '/' . ' **/*.')
    elseif a:direction == 'replace'
        call CmdLine("%s" . '/'. l:pattern . '/')
    elseif a:direction == 'f'
        execute "normal /" . l:pattern . "^M"
    endif

    let @/ = l:pattern
    let @" = l:saved_reg
endfunction


"""
" Returns true if paste mode is enabled
function! HasPaste()
    if &paste
        return 'PASTE MODE  '
    endif
    return '            '
endfunction


"""
" Don't close window, when deleting a buffer
command! Bclose call <SID>BufcloseCloseIt()
function! <SID>BufcloseCloseIt()
    let l:currentBufNum = bufnr("%")
    let l:alternateBufNum = bufnr("#")

    if buflisted(l:alternateBufNum)
        buffer #
    else
        bnext
    endif

    if bufnr("%") == l:currentBufNum
        new
    endif

    if buflisted(l:currentBufNum)
        execute("bdelete! ".l:currentBufNum)
    endif
endfunction



"""
" Tab headings
" set up tab labels with tab number, buffer name, number of windows
function! GuiTabLabel()
    let label = ''
    let bufnrlist = tabpagebuflist(v:lnum)
    " Add '+' if one of the buffers in the tab page is modified
    for bufnr in bufnrlist
        if getbufvar(bufnr, "&modified")
            let label = '+'
            break
        endif
    endfor
    " Append the tab number
    let label .= v:lnum.': '
    " Append the buffer name
    let name = bufname(bufnrlist[tabpagewinnr(v:lnum) - 1])
    if name == ''
        " give a name to no-name documents
        if &buftype=='quickfix'
            let name = '[Quickfix List]'
        else
            let name = '[No Name]'
        endif
    else
        " get only the file name
        let name = fnamemodify(name,":t")
    endif
    let label .= name
    " Append the number of windows in the tab page
    let wincount = tabpagewinnr(v:lnum, '$')
    return label . '  [' . wincount . ']'
endfunction

set guitablabel=%{GuiTabLabel()}



"""
" Toggles between settings of number and relativenumber.
" Usage: F5      in modes: normal, insert and visual
"
function! NumberToggle()
    if(&g:relativenumber == 0 && &g:number == 0)
        set norelativenumber
        set number
    elseif(&g:relativenumber == 0 && &g:number == 1)
        set relativenumber
        set number
    elseif(&g:relativenumber == 1 && &g:number == 1)
        set relativenumber
        set nonumber
    else
        set norelativenumber
        set nonumber
    endif
endfunc

