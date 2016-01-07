let nasl_space_errors = 1
if !exists('g:nasl_no_auto_ft')
    au BufNewFile,BufRead,BufEnter *.nasl set filetype=nasl
    au BufNewFile,BufRead,BufEnter *.inc call nasl#FTCheck()
    au BufRead,BufNewFile *.audit set syntax=xml
    au BufRead,BufNewFile *.inc  set indentexpr=
endif
