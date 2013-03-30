" Vim filetype plugin
" Language:    kp19pp https://github.com/marionette-of-u/kp19pp
" Maintainer:  ujihisa <ujihisa at gmail com>
" License:     GPLv3 or any later version

if exists("b:did_ftplugin")
  finish
endif

let b:did_ftplugin = 1

let s:save_cpo = &cpo
set cpo&vim

setlocal expandtab
"setlocal iskeyword+=?,-,*,!,+,=,<,>,.,:,/
setlocal cindent

"let &l:define = '^\s*(def\%(-\|n\|n-\|macro\|struct\|multi\)\?'
"setlocal commentstring=;%s

"let b:undo_ftplugin = "setlocal et< isk< cms< def<"
let b:undo_ftplugin = "setlocal et< cin<"

let &cpo = s:save_cpo
unlet s:save_cpo
