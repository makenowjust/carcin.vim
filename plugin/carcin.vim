" Name: carcin.vim
" URL: https://github.com/MakeNowJust/carcin.vim
" License: MIT <https://makenowjust.github.io/license/mit?2015>
" Repository: https://github.com/MakeNowJust/carcin.vim
" Maintainer: TSUYUSATO Kitsune <make.just.on@gmail.com>

" plugin's convention (begin) {{{
if exists('g:loaded_carcin_vim')
  finish
endif
let g:loaded_carcin_vim = 1

let s:save_cpo = &cpo
set cpo&vim
" }}}

function s:default(name, value) " {{{
  if !exists('g:' . a:name)
    let g:[a:name] = a:value
  endif
endfunction " }}}

" set default configurations {{{
call s:default('carcin_url', 'http://carc.in')
call s:default('carcin_http_client', ['python', 'curl', 'wget'])
call s:default('carcin_show_permlink', 1)
" }}}

" define a command for vim-quickrun {{{
command -nargs=* -complete=file CarcinRunFile call carcin#run_file_command(<f-args>)
" }}}

" plugin's convention (end) {{{
let &cpo = s:save_cpo
" }}}

" vim: fdm=marker fdc=2
