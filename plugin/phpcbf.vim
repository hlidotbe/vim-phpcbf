" The "Vim phpcbf" plugin runs phpcbf and displays the results in Vim.
"
" Author:    Hugues Lismonde
" Credits:   Yuta Nagamiya
" URL:       https://github.com/hlidotbe/vim-phpcbf
" Version:   0.1
" Copyright: Copyright (c) 2017 Hugues Lismonde
" License:   MIT
" ----------------------------------------------------------------------------

if exists('g:loaded_vimphpcbf') || &cp
  finish
endif
let g:loaded_vimphpcbf = 1

let s:save_cpo = &cpo
set cpo&vim

if !exists('g:vimphpcbf_phpcbf_cmd')
  let g:vimphpcbf_phpcbf_cmd = 'phpcbf '
endif

" Options
if !exists('g:vimphpcbf_extra_args')
  let g:vimphpcbf_extra_args = ''
endif

if !exists('g:vimphpcbf_keymap')
  let g:vimphpcbf_keymap = 1
endif

let s:phpcbf_switches = ['-n', '-w', '-l', '-i', '-d', '--no-patch']

function! s:phpcbfSwitches(...)
  return join(s:phpcbf_switches, "\n")
endfunction

function! s:phpcbf(current_args)
  let l:extra_args     = g:vimphpcbf_extra_args
  let l:filename       = @%
  let l:phpcbf_cmd    = g:vimphpcbf_phpcbf_cmd
  let l:phpcbf_opts   = ' '.a:current_args.' '.l:extra_args
  let l:phpcbf_output  = system(l:phpcbf_cmd.l:phpcbf_opts.' '.l:filename)
  edit
  let l:phpcbf_output  = substitute(l:phpcbf_output, '\\"', "'", 'g')
  let l:phpcbf_results = split(l:phpcbf_output, "\n")
  cexpr l:phpcbf_results
  copen
endfunction

command! -complete=custom,s:phpcbfSwitches -nargs=? phpcbf :call <SID>phpcbf(<q-args>)

" Shortcuts for phpcbf
if g:vimphpcbf_keymap == 1
  nmap <Leader>bf :phpcbf<CR>
endif

let &cpo = s:save_cpo
