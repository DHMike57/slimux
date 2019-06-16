set dict+=~/.vim/dict/sml.txt

if exists('g:slimux_sml_loaded')
	finish
endif
vnoremap <Leader>s :SlimuxREPLSendSelection<CR>
nnoremap <Leader>l :SlimuxREPLSendLine<CR>
nnoremap <Leader>z :SlimuxREPLSendParagraph<CR>;
nnoremap <Leader>b :SlimuxREPLSendBuffer<CR>;
nnoremap <Leader>k :SlimuxShellRun OS.Process.exit(OS.Process.success);<CR>
nnoremap <Leader>c :SlimuxShellRun rlwrap sml<CR>
nnoremap <Leader>R :call SlimuxRestart()<CR>

:function! SlimuxRestart()
	call SlimuxSendCode("\<c-c>")
	call SlimuxSendCode('OS.Process.exit(OS.Process.success);' . "\n")
	:sleep 1
	call SlimuxSendCode("rlwrap sml\n")
:endfunction

