"Enable filetype plugins
filetype plugin indent on

"Set to auto read when a file is changed from the outside
set autoread

"number of the lines
set number

"Always show current position
set ruler

"1 tab == 4 spaces
set shiftwidth=4
set tabstop=4
set expandtab

"Colorscheme
colorscheme default
set background=dark
let g:indent_guides_enable_on_vim_startup=1
let g:indent_guides_start_level=2
let g:indent_guides_indent_levels=10
let g:indent_guides_guide_size=1

"Mouse support
set mouse=a

"Delete trailing white space on save (useful for some filetypes)
fun! CleanExtraSpaces()
    let save_cursor=getpos('.')
    let old_query=getreg('/')
    silent! %s\s\+$//e
    call setpos('.', save_cursor)
    call setreg('/', old_query)
endfun

if has("autocmd")
    autocmd BufwritePre *.txt,*.c,*.cpp,*.js,*.py,*.wiki,*.coffee :call CleanExtraSpaces()
endif

"Parenthesis/bracket
vnoremap $1 <esc>`<a)<esc>`<i(<esc> 
vnoremap $2 <esc>`<a]<esc>`<i[<esc> 
vnoremap $3 <esc>`<a}<esc>`<i{<esc> 
vnoremap $4 <esc>`<a'<esc>`<i'<esc> 
vnoremap $5 <esc>`<a"<esc>`<i"<esc> 

"Map auto complete
inoremap $1 ()<esc>i
inoremap $2 []<esc>i
inoremap $3 {}<esc>i
inoremap $4 {<esc>o}<esc>O
inoremap $q ''<esc>i
inoremap $q ""<esc>i
