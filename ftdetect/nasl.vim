if !exists('g:nasl_no_auto_ft')
    autocmd BufNewFile,BufRead,BufEnter *.nasl set filetype=nasl
    autocmd BufNewFile,BufRead,BufEnter *.inc call nasl#FTCheck()
endif
