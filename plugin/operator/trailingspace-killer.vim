if exists('g:loaded_operator_trailingspace_killer')
    finish
endif

call operator#user#define('trailingspace-killer', 'operator#trailingspace_killer#do', 'let g:operator#trailingspace_killer#preserved_pos = getpos(''.'')')

let g:loaded_operator_trailingspace_killer = 1
