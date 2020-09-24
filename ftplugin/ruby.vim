
if exists("g:slimux_ruby_loaded")
    finish
endif
let g:slimux_ruby_loaded= 1
let g:slimux_buffer_filetype="ruby"

function! SlimuxEscape_ruby(text)
    " if text does not end with newline, add one
    if a:text !~ "\n$"
        "let str_ret = a:text . "\n"
        let str_ret = substitute(a:text,"\n$","\n","")
    else
        let str_ret = a:text
    endif
    return str_ret
endfunction


function! SlimuxFilter_ruby(text)
  " get rid of the prompt
	let str_ret=map(a:text,{key,val->substitute(val,">> *","","")})
	return str_ret
endfunction

function! SlimuxRestart()
	call SlimuxSendCode("\<c-c>")
	:sleep  1
	call SlimuxSendCode("irb --prompt simple\n")
endfunction

