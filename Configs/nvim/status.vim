"Set status line display
"set laststatus=2
"set statusline=
"set statusline+=\ %l
"set statusline+=\ %*
"set statusline+=\ ‹‹
"set statusline+=\ %f\ %*
"set statusline+=\ ››
"set statusline+=\ %m
"set statusline+=%=
"set statusline+=\ ‹‹
"set statusline+=\ %v:%l\/%L
"set statusline+=\ ::
"set statusline+=\ %n
"set statusline+=\ ››\ %*

"status line
set statusline=
set statusline+=%#DiffAdd#%{(mode()=='n')?'\ \ NORMAL\ ':''}
set statusline+=%#DiffChange#%{(mode()=='i')?'\ \ INSERT\ ':''}
set statusline+=%#DiffDelete#%{(mode()=='r')?'\ \ RPLACE\ ':''}
set statusline+=%#Cursor#%{(mode()=='v')?'\ \ VISUAL\ ':''}
set statusline+=\ %n\           " buffer number
set statusline+=%#Visual#       " colour
set statusline+=%{&paste?'\ PASTE\ ':''}
set statusline+=%{&spell?'\ SPELL\ ':''}
set statusline+=%#CursorIM#     " colour
set statusline+=%R                        " readonly flag
set statusline+=%M                        " modified [+] flag
set statusline+=%#Cursor#               " colour
set statusline+=%#CursorLine#     " colour
set statusline+=\ %f\ %*                   " short file name
set statusline+=%=                          " right align
set statusline+=%#CursorLine#   " colour
set statusline+=\ %Y\                   " file type
set statusline+=%#CursorIM#     " colour
set statusline+=\ %v:%l\/%L\         " line + column
set statusline+=%#Cursor#       " colour
set statusline+=\ %3p%%\ %*                " percentage
