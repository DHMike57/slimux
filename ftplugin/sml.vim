
if exists("g:slimux_sml_loaded")
    finish
endif
let g:slimux_sml_loaded= 1
let g:slimux_buffer_filetype="sml"

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

"-filter out stuff we don't want in repl window
function! SlimuxFilter_sml(text)
	let str_ret=filter(a:text,'v:val !~ "rlwrap"')
	let str_ret=filter(a:text,'v:val !~ "^stdIn:"')
	let str_ret=filter(a:text,'v:val !~ "^Standard ML of New"')
	let str_ret=filter(a:text,'v:val !~ "^= "')
	return str_ret
endfunction

function! SlimuxRestart()
	call SlimuxSendCode("\<c-c>")
	call SlimuxSendCode('OS.Process.exit(OS.Process.success);' . "\n")
	:sleep  1
	call SlimuxSendCode("rlwrap -c -f . sml\n")
endfunction
