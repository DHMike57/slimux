set dictionary+=$HOME/.vim/dict/racket.txt
if !exists("g:slimux_racket_loaded")
    finish
endif
"	vnoremap <LocalLeader>v :SlimuxREPLSendSelection<CR>
"	nnoremap <LocalLeader>l :SlimuxREPLSendLine<CR>
	execute 'vnoremap <buffer> <silent> ' . g:slimux_scheme_leader.'v :SlimuxREPLSendSelection<CR>'
	execute 'nnoremap <buffer> <silent> ' . g:slimux_scheme_leader.'l :SlimuxREPLSendLine<CR>'
	execute 'nnoremap <buffer> <silent> ' . g:slimux_scheme_leader.'z :SlimuxREPLSendParagraph<CR>'
  execute 'nnoremap <buffer> <silent> ' . g:slimux_scheme_leader.'b :SlimuxREPLSendBuffer<CR>'
  execute 'nnoremap <buffer> <silent> ' . g:slimux_scheme_leader.'s :SlimuxREPLSendSexp<CR>'
  execute 'nnoremap <buffer> <silent> ' . g:slimux_scheme_leader.'S :SlimuxREPLSendTopSexp<CR>'
  execute 'nnoremap <buffer> <silent> ' . g:slimux_scheme_leader.'p :SlimuxREPLSexpShowPict<CR>'
  execute 'nnoremap <buffer> <silent> ' . g:slimux_scheme_leader.'k :SlimuxShellRun (exit)<CR>'
  execute 'nnoremap <buffer> <silent> ' . g:slimux_scheme_leader.'c :SlimuxShellRun racket<CR>'
  execute 'nnoremap <buffer> <silent> ' . g:slimux_scheme_leader.'R :call SlimuxRestart()<CR>'
"	vnoremap <LocalLeader>v :SlimuxREPLSendSelection<CR>
"	nnoremap <LocalLeader>l :SlimuxREPLSendLine<CR>
"	nnoremap <LocalLeader>z :SlimuxREPLSendParagraph<CR>;
"	nnoremap <LocalLeader>b :SlimuxREPLSendBuffer<CR>;
"	nnoremap <LocalLeader>s :SlimuxREPLSendSexp<CR>;
"
"

:function! SlimuxRestart()
	call SlimuxSendCode("\<c-c>")
	call SlimuxSendCode('(exit)'. "\n")
	:sleep 1
	call SlimuxSendCode('racket' . "\n")
:endfunction





