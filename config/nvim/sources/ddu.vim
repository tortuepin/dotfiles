call ddu#custom#patch_global({
    \   'ui': 'ff',
    \   'sources': [{'name':'file_rec','params':{}},{'name':'mr'},{'name':'register'},{'name':'buffer'}],
    \   'sourceOptions': {
    \     '_': {
    \       'matchers': ['matcher_substring'],
    \     },
    \   },
    \   'kindOptions': {
    \     'file': {
    \       'defaultAction': 'open',
    \     },
    \   },
    \ })

"ddu-key-setting
autocmd FileType ddu-ff call s:ddu_my_settings()
function! s:ddu_my_settings() abort
  nnoremap <buffer><silent> <CR>
        \ <Cmd>call ddu#ui#ff#do_action('itemAction')<CR>
  nnoremap <buffer><silent> <Space>
        \ <Cmd>call ddu#ui#ff#do_action('toggleSelectItem')<CR>
  nnoremap <buffer><silent> i
        \ <Cmd>call ddu#ui#ff#do_action('openFilterWindow')<CR>
  nnoremap <buffer><silent> q
        \ <Cmd>call ddu#ui#ff#do_action('quit')<CR>
endfunction

autocmd FileType ddu-ff-filter call s:ddu_filter_my_settings()
function! s:ddu_filter_my_settings() abort
  inoremap <buffer><silent> <CR>
  \ <Esc><Cmd>close<CR>
  nnoremap <buffer><silent> <CR>
  \ <Cmd>close<CR>
  nnoremap <buffer><silent> q
  \ <Cmd>close<CR>
endfunction

"ddu keymapping.
nnoremap <SID>[ddu] <Nop>
nmap <Leader>d <SID>[ddu]

nnoremap <silent> <SID>[ddu]m :<C-u>Ddu mr<CR>
nnoremap <silent> <SID>[ddu]b :<C-u>Ddu buffer<CR>
nnoremap <silent> <SID>[ddu]r :<C-u>Ddu register<CR>
nnoremap <silent> <SID>[ddu]f :<C-u>Ddu file_rec<CR>
