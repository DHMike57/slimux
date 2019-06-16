
set dictionary+=$HOME/.vim/dict/scheme.vim
if !exists("g:slimux_scheme_loaded")
    finish
endif
execute 'vnoremap <buffer> <silent> ' . g:slimux_scheme_leader.'v :SlimuxREPLSendSelection<CR>'
execute 'nnoremap <buffer> <silent> ' . g:slimux_scheme_leader.'l :SlimuxREPLSendLine<CR>'
execute 'nnoremap <buffer> <silent> ' . g:slimux_scheme_leader.'z :SlimuxREPLSendParagraph<CR>'
execute 'nnoremap <buffer> <silent> ' . g:slimux_scheme_leader.'b :SlimuxREPLSendBuffer<CR>'
execute 'nnoremap <buffer> <silent> ' . g:slimux_scheme_leader.'s :SlimuxREPLSendSexp<CR>'
execute 'nnoremap <buffer> <silent> ' . g:slimux_scheme_leader.'S :SlimuxREPLSendTopSexp<CR>'
execute 'nnoremap <buffer> <silent> ' . g:slimux_scheme_leader.'k :SlimuxShellRun ,q<CR>'
execute 'nnoremap <buffer> <silent> ' . g:slimux_scheme_leader.'c :SlimuxShellRun csi<CR>'

:function! SLimuxRestart()
	call SlimuxSendCode("\<c-c>")
	call SlimuxSendCode('(quit)'. "\n")
	:sleep 1
	call SlimuxSendCode('csi' . "\n")
:endfunction
