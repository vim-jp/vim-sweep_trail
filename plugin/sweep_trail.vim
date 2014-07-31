" 行末スペースを自動的に削除します。
" Version: 1.0
" Author:  thinca <thinca+vim@gmail.com>
" License: VIM LICENSE

if exists('g:loaded_sweep_trail')
  finish
endif
let g:loaded_sweep_trail = 1

let s:save_cpo = &cpo
set cpo&vim

command! -bar SweepTrail call sweep_trail#sweep()

nnoremap <silent> <Plug>(sweep_trail) :<C-u>SweepTrail<CR>

let &cpo = s:save_cpo
unlet s:save_cpo
