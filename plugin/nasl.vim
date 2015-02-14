function! nasl#FTCheck()
    " reproduction of vim's filetype.vim to hook pov files
    " note that asm syntax is disabled, so you either
    " have to copy that code in here or figure out
    " how to get the internal function (which may not
    " be possible)
    if exists("g:filetype_inc")
        exe "setf " . g:filetype_inc
    else
        let lines = getline(1).getline(2).getline(3)
        if lines =~? "perlscript"
            setf aspperl
        elseif lines =~ "<%"
            setf aspvbs
        elseif lines =~ "<?"
            setf php
        else
            "call s:FTasmsyntax()
            "if exists("b:asmsyntax")
            "    exe "setf " . fnameescape(b:asmsyntax)
            "else
                setf nasl
            "endif
        endif
    endif
endfun 
