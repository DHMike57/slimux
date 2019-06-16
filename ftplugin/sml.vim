
if exists("g:slimux_sml_loaded")
    finish
endif
let g:slimux_sml_loaded= 1

function! SlimuxEscape_sml(text)
    " if text does not end with newline, add one
    if a:text !~ ";\n$"
        "let str_ret = a:text . ";\n"
        let str_ret = substitute(a:text,"\n$",";\n","")
    else
        let str_ret = a:text
    endif

    return str_ret
endfunction

:function SlimuxRestart()
	call SlimuxSendCode("\<c-c>")
	"	:SlimuxShellRun \<c-c>
	call SlimuxSendCode('OS.Process.exit(OS.Process.success);' . "\n")
	":SlimuxShellRun OS.Process.exit(OS.Process.success);<CR>
	:sleep 1
	call SlimuxSendCode("rlwrap sml\n")
:endfunction
